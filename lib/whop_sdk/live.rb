# frozen_string_literal: true

require "delegate"
require "json"
require "net/http"
require "openssl"
require "socket"
require "stringio"
require "timeout"

module Whop_sdk
  # Live reads: a read's answer now, then again each time it changes.
  #
  # A live read is a GET the API also answers as an event stream: the same request with
  # `Accept: text/event-stream` gets the read's whole answer now and again each time it changes.
  # Its client carries `watch` and `wait_for` beside the read. They take exactly the read's
  # arguments, then their own options:
  #
  #   client = Whop_sdk::Client.new(token: "...")
  #
  #   client.stats.time_series.watch(metric: "gmv", from: "2026-11-01", to: "2026-11-30") do |series|
  #     puts series.data.points.size
  #   end
  #
  #   series = client.stats.time_series.wait_for(
  #     metric: "gmv", from: "2026-11-01", to: "2026-11-30",
  #     until: ->(series) { series.data.points.size == 30 },
  #     timeout: 120
  #   )
  #
  # Without a block, `watch` returns a {Stream}: an Enumerator of the answers, which `close` stops at
  # once from any thread:
  #
  #   stream = client.stats.time_series.watch(metric: "gmv", from: "2026-11-01", to: "2026-11-30")
  #   Thread.new { sleep(300) and stream.close }
  #   stream.each { |series| puts series.data.points.size }
  #
  # Each connection sends the request the read itself builds: `watch` runs the generated read against
  # a stand-in for its HTTP client that records the request instead of sending it, then sends that
  # request asking for the event stream. The read's `request_options` therefore apply to every
  # connection. The client's retries do not: each connection is sent once, and `watch` reconnects
  # itself. A connection that receives nothing for 45 seconds (the server sends a keep-alive every
  # 15) is dropped and reconnected.
  #
  # `watch` yields each answer as the read's own answer type, reconnects after a drop (each
  # connection starts with a fresh answer, so nothing is replayed), and ends when the stream closes
  # for good:
  #
  # - `not_live` with no status or a 2xx status ends the iteration: the last answer stands.
  # - `not_live` with any other status, or `unreadable`, raises {StreamClosedError}.
  # - any other close reconnects.
  # - a stream that ends without a close is a drop: `on_disconnect` gets a {StreamEndedError}, then
  #   it reconnects.
  # - a client error raises the error the read raises for it, as the server ends a read on one; 408,
  #   429, a server error, a network error or a timeout is a drop.
  # - a success that is not an event stream is the read's one answer: it is yielded, then the
  #   iteration ends.
  #
  # Reconnects back off: the first waits a random 0 to 1 second (at most `max_backoff`), each after
  # it 1 second doubling up to `max_backoff`, plus up to 25% jitter. The count starts over only after
  # a connection that stayed open at least 30 seconds, not after an answer, since every connection
  # opens with one.
  module Live
    SNAPSHOT_EVENT = "stream.snapshot"
    CLOSED_EVENT = "stream.closed"
    EVENT_STREAM = "text/event-stream"
    DEFAULT_MAX_BACKOFF = 30.0
    DEFAULT_WAIT_FOR_TIMEOUT = 30.0
    IDLE_TIMEOUT = 45.0
    STEADY_CONNECTION = 30.0
    FINAL_CLOSE_REASONS = %w[not_live unreadable].freeze
    RETRIED_CLIENT_ERRORS = [408, 429].freeze
    # Net::HTTP's own timeouts, not Timeout::Error: a caller's Timeout.timeout with an explicit class
    # raises that inside the read, and must end the stream rather than reconnect it.
    DROPS = [
      Net::OpenTimeout, Net::ReadTimeout, Net::WriteTimeout, IOError, SystemCallError, SocketError,
      OpenSSL::SSL::SSLError, Net::HTTPBadResponse, Net::ProtocolError
    ].freeze

    # The stream closed for good: `not_live` with the status the read now answers, or `unreadable`.
    class StreamClosedError < StandardError
      attr_reader :reason, :status

      def initialize(reason, status = nil)
        @reason = reason
        @status = status
        super(status.nil? ? "The stream closed: #{reason}" : "The stream closed: #{reason} (#{status})")
      end
    end

    # The stream ended without a `stream.closed` event: `watch` passes it to `on_disconnect` and reconnects.
    class StreamEndedError < StandardError
      def initialize
        super("The stream ended without a stream.closed event")
      end
    end

    class WaitForTimeoutError < Timeout::Error
      attr_reader :timeout

      def initialize(timeout)
        @timeout = timeout
        super(format("No answer matched within %<timeout>g seconds", timeout:))
      end
    end

    class WaitForFailedError < StandardError
      attr_reader :answer

      def initialize(answer)
        @answer = answer
        super("An answer matched fail_when")
      end
    end

    # What `watch` returns without a block: an Enumerator of the read's answer now and each time it
    # changes. `close` stops it at once, from any thread: a loop over it ends without an error, and a
    # connection waiting between events closes. Each iteration opens its own connection.
    class Stream < Enumerator
      def initialize(read, max_backoff:, on_disconnect:)
        @mutex = Mutex.new
        @sessions = []
        @closed = false
        super() do |answers|
          session = Session.new(read, max_backoff:, on_disconnect:)
          next unless track(session)

          begin
            session.run(answers)
          ensure
            untrack(session)
          end
        end
      end

      def close
        sessions = @mutex.synchronize do
          @closed = true
          @sessions.dup
        end
        sessions.each(&:stop)
        nil
      end

      def closed?
        @mutex.synchronize { @closed }
      end

      private

      def track(session)
        @mutex.synchronize do
          @sessions << session unless @closed
          !@closed
        end
      end

      def untrack(session)
        @mutex.synchronize { @sessions.delete(session) }
      end
    end

    class << self
      # The wait before reconnect `attempt`: a random 0 to 1 second (at most `max_backoff`) for
      # attempt 0, then 1 second doubling up to `max_backoff`, plus up to 25%.
      def backoff_seconds(attempt, max_backoff = DEFAULT_MAX_BACKOFF, fraction = jitter)
        return [max_backoff, 1.0].min * fraction if attempt <= 0

        base = [max_backoff, 2.0**(attempt - 1)].min
        base + (base * 0.25 * fraction)
      end

      # @api private
      def watch(client, read, answer, params, request_options:, max_backoff:, on_disconnect:, &)
        stream = Stream.new(Read.new(client, read, answer, params, request_options), max_backoff:, on_disconnect:)
        block_given? ? stream.each(&) : stream
      end

      # @api private
      def wait_for(client, read, answer, params, request_options:, until:, fail_when:, timeout:, max_backoff:,
                   on_disconnect:)
        accepts = binding.local_variable_get(:until)
        stream = Stream.new(Read.new(client, read, answer, params, request_options), max_backoff:, on_disconnect:)
        first(stream, accepts, fail_when, timeout)
      end

      # @api private
      def drop?(error)
        case error
        when OpenSSL::SSL::SSLError then !error.message.include?("certificate verify failed")
        when StreamEndedError, *DROPS then true
        when Whop_sdk::Errors::ResponseError then reconnects_after?(error.code)
        else false
        end
      end

      # @api private
      def clock
        Process.clock_gettime(Process::CLOCK_MONOTONIC)
      end

      # @api private
      def jitter
        rand
      end

      # @api private
      def idle_timeout
        IDLE_TIMEOUT
      end

      # @api private
      def pause(session, seconds)
        session.wait(seconds)
      end

      # Ends a read another thread is blocked in on `connection`, and closes its socket: Ruby wakes
      # every thread blocked on an IO it closes.
      #
      # @api private
      def interrupt(connection)
        socket = connection.instance_variable_get(:@socket)&.io&.to_io
        return if socket.nil? || socket.closed?

        begin
          socket.shutdown(Socket::SHUT_RDWR)
        rescue IOError, SystemCallError
          nil
        end
        socket.close
      rescue IOError, SystemCallError
        nil
      end

      # @api private
      def reconnects_after?(code)
        return false if code.between?(200, 299)

        !code.between?(400, 499) || RETRIED_CLIENT_ERRORS.include?(code)
      end

      # Reads the stream on a thread of its own, so the timeout holds whatever the stream is waiting
      # on, and tries each answer here.
      private

      def first(stream, accepts, fail_when, timeout)
        arrivals = Thread::Queue.new
        Thread.new do
          Thread.current.report_on_exception = false
          stream.each { |answer| arrivals << [:answer, answer] }
          arrivals << [:closed]
        rescue StandardError => e
          arrivals << [:error, e]
        end
        deadline = timeout && (clock + timeout)
        loop do
          kind, value = arrivals.pop(timeout: deadline && [deadline - clock, 0].max)
          case kind
          when nil then raise WaitForTimeoutError, timeout
          when :error then raise value
          when :closed then raise StreamClosedError, "not_live"
          end
          raise WaitForFailedError, value if fail_when&.call(value)
          return value if accepts.call(value)
        end
      ensure
        stream.close
      end
    end

    # An error the caller's block raised while handed an answer: it passes through as it was raised.
    class Handed < StandardError
      attr_reader :error

      def initialize(error)
        @error = error
        super(error.message)
      end
    end

    # What `stop` raises in a thread opening a connection.
    class Stopped < StandardError; end

    # The request a read builds, raised from where its HTTP client would send it.
    class Captured < StandardError
      attr_reader :connection, :request

      def initialize(connection, request)
        @connection = connection
        @request = request
        super("#{request.method} #{request.path}")
      end
    end

    # Stands in for the Net::HTTP the generated HTTP client opens: takes its settings, raises the request.
    class Recorder < SimpleDelegator
      def request(request, *)
        raise Captured.new(__getobj__, request)
      end
    end

    # Extends a copy of the generated HTTP client to build the read's request and stop there.
    module Capturing
      def connect(url)
        Recorder.new(super)
      end
    end

    # Extends a copy of the generated HTTP client to hand the read a response already received, so
    # the read itself parses it or raises its error.
    module Replaying
      attr_accessor :live_response

      def send(_request)
        live_response
      end
    end

    class Read
      def initialize(client, read, answer, params, request_options)
        @client = client
        @read = read
        @answer = answer
        @params = params
        @request_options = request_options
      end

      # Opens one connection, hands `answers` each answer, and says how it ended: `:end` for good,
      # `:reconnect` for a close that asks for a new connection. Raises what ended it otherwise.
      def connect(session, answers)
        connection, request = capture
        request["Accept"] = EVENT_STREAM
        # The generated client sends on a connection Net::HTTP#request starts itself, which asks the
        # server to close it; this one is started first, so it can be closed from another thread.
        request["Connection"] ||= "close"
        connection.read_timeout = Live.idle_timeout
        begin
          return :end unless establish(session, connection) && session.attach(connection)

          connection.request(request) do |response|
            return events(session, response, answers) if event_stream?(response)

            session.emit(answers, replay(answered(response)))
            return :end
          end
        ensure
          session.detach
          finish(connection)
        end
      end

      private

      # Closes the connection without letting a failure there replace how it ended: after `interrupt`
      # shut its socket down, Net::HTTP#finish raises IOError, which would read as a drop.
      def finish(connection)
        connection.finish if connection.started?
      rescue IOError, SystemCallError
        nil
      end

      # Connects (TCP, then TLS) on a thread of its own, which `stop` interrupts with {Stopped}: until
      # the connection is open there is no socket to close, and the caller's thread is not this
      # runtime's to interrupt. Net::HTTP closes a half-open socket on the error. Returns false when
      # the session stopped first.
      def establish(session, connection)
        opener = Thread.handle_interrupt(Stopped => :never) do
          Thread.new do
            Thread.current.report_on_exception = false
            Thread.handle_interrupt(Stopped => :immediate) { connection.start }
          end
        end
        return false unless session.opening(opener)

        opener.value
        true
      ensure
        session.opened
        settle(opener) if opener
      end

      # Ends the opener and waits for it, so whether the connection started is settled.
      def settle(opener)
        opener.raise(Stopped)
        opener.join
      rescue StandardError
        nil
      end

      def http_client
        @client.instance_variable_get(:@client)
      end

      def through(http_client)
        client = @client.dup
        client.instance_variable_set(:@client, http_client)
        client
      end

      def call(client)
        client.public_send(@read, request_options: @request_options, **@params)
      end

      def capture
        call(through(http_client.dup.extend(Capturing)))
        raise "#{@client.class}##{@read} returned without sending a request"
      rescue Captured => e
        [e.connection, e.request]
      end

      def replay(response)
        replaying = http_client.dup.extend(Replaying)
        replaying.live_response = response
        call(through(replaying))
      end

      # `response` read in full, or, when a final status's body drops partway, that status alone: the read
      # fails with it either way, where a drop would reconnect and get the same status again.
      def answered(response)
        response.read_body
        response
      rescue *DROPS
        raise if response.is_a?(Net::HTTPSuccess) || Live.reconnects_after?(response.code.to_i)

        without_body(response)
      end

      def without_body(response)
        stand_in = response.class.new(response.http_version, response.code, response.message)
        response.each_capitalized do |name, value|
          stand_in[name] = value unless %w[content-length content-encoding transfer-encoding].include?(name.downcase)
        end
        stand_in["Content-Length"] = "0"
        stand_in.reading_body(Net::BufferedIO.new(StringIO.new), true) { nil }
        stand_in
      end

      def event_stream?(response)
        response.is_a?(Net::HTTPSuccess) && response["content-type"].to_s.include?(EVENT_STREAM)
      end

      def events(session, response, answers)
        session.stream_opened
        parser = EventParser.new
        on_event = proc do |name, data|
          return :end if session.stopped?

          case name
          when CLOSED_EVENT then return closed(data)
          when SNAPSHOT_EVENT then session.emit(answers, snapshot(data))
          end
        end
        response.read_body do |chunk|
          parser.feed(chunk, &on_event)
          return :end if session.stopped?
        end
        parser.finish(&on_event)
        raise StreamEndedError
      end

      def snapshot(data)
        body = JSON.parse(data)
        body.delete("event") if body.is_a?(Hash)
        @answer.load(JSON.generate(body))
      end

      def closed(data)
        fields = JSON.parse(data)
        fields = {} unless fields.is_a?(Hash)
        reason = fields["reason"].is_a?(String) ? fields["reason"] : "unknown"
        status = fields["status"].is_a?(Integer) ? fields["status"] : nil
        return :end if reason == "not_live" && (status.nil? || status.between?(200, 299))
        raise StreamClosedError.new(reason, status) if FINAL_CLOSE_REASONS.include?(reason)

        :reconnect
      end
    end

    # One `each` over a {Stream}: connects, reconnects, and stops when told to from any thread.
    class Session
      def initialize(read, max_backoff:, on_disconnect:)
        @read = read
        @max_backoff = max_backoff
        @on_disconnect = on_disconnect
        @mutex = Mutex.new
        @wakeup = ConditionVariable.new
        @stopped = false
        @opener = nil
        @connection = nil
        @streamed_since = nil
      end

      def run(answers)
        attempt = 0
        until stopped?
          @streamed_since = nil
          handed = nil
          begin
            return if @read.connect(self, answers) == :end
          rescue Handed => e
            handed = e.error
          rescue StandardError => e
            return if stopped?
            raise unless Live.drop?(e)

            @on_disconnect&.call(e)
          end
          raise handed if handed

          attempt = 0 if steady?
          return if Live.pause(self, Live.backoff_seconds(attempt, @max_backoff))

          attempt += 1
        end
      end

      # The connection's event stream is open: the window that restarts the backoff starts here, so a
      # connect that fails or hangs, however long, never restarts it.
      def stream_opened
        @streamed_since = Live.clock
      end

      def emit(answers, answer)
        answers << answer
      rescue StandardError => e
        raise Handed, e
      end

      def opening(opener)
        @mutex.synchronize do
          @opener = opener unless @stopped
          !@stopped
        end
      end

      def opened
        @mutex.synchronize { @opener = nil }
      end

      def attach(connection)
        @mutex.synchronize do
          @connection = connection unless @stopped
          !@stopped
        end
      end

      def detach
        @mutex.synchronize { @connection = nil }
      end

      def stop
        opener, connection = @mutex.synchronize do
          @stopped = true
          @wakeup.broadcast
          [@opener, @connection]
        end
        opener&.raise(Stopped)
        Live.interrupt(connection) if connection
      end

      def stopped?
        @mutex.synchronize { @stopped }
      end

      def steady?
        !@streamed_since.nil? && Live.clock - @streamed_since >= STEADY_CONNECTION
      end

      # Waits `seconds` before a reconnect, or until the session is stopped; returns whether it was.
      def wait(seconds)
        deadline = Live.clock + seconds
        @mutex.synchronize do
          until @stopped
            remaining = deadline - Live.clock
            break if remaining <= 0

            @wakeup.wait(@mutex, remaining)
          end
          @stopped
        end
      end
    end

    # Server-sent events, from the chunks of a response body: yields each event's name and data.
    class EventParser
      LINE_END = /\r\n|\n|\r(?=.)/m

      def initialize
        @buffer = String.new(encoding: Encoding::BINARY)
        @name = nil
        @data = []
      end

      def feed(chunk, &)
        @buffer << chunk.b
        while (match = LINE_END.match(@buffer))
          line = @buffer.byteslice(0, match.begin(0)).force_encoding(Encoding::UTF_8)
          @buffer = @buffer.byteslice(match.end(0)..)
          field(line, &)
        end
      end

      # The body's end: a CR it ends on, held in case an LF followed, ends its line.
      def finish(&)
        return unless @buffer.end_with?("\r")

        line = @buffer.byteslice(0, @buffer.bytesize - 1).force_encoding(Encoding::UTF_8)
        @buffer = String.new(encoding: Encoding::BINARY)
        field(line, &)
      end

      private

      def field(line, &)
        return dispatch(&) if line.empty?
        return if line.start_with?(":")

        name, value = line.split(":", 2)
        value = value.to_s.delete_prefix(" ")
        case name
        when "event" then @name = value
        when "data" then @data << value
        end
      end

      def dispatch
        name = @name || "message"
        data = @data
        @name = nil
        @data = []
        yield name, data.join("\n") unless data.empty?
      end
    end

    private_constant :Handed, :Stopped, :Captured, :Recorder, :Capturing, :Replaying, :Read, :Session, :EventParser
  end
end
