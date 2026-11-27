# frozen_string_literal: true

require "json"
require "socket"
require "uri"

# A local HTTP/1.1 server for the live read tests: it answers each connection with the next scripted
# answer over a real socket and records each request it reads.
class LiveServer
  API_VERSION = "2026-01-01"
  KEEP_ALIVE = ": keep-alive\n\n"

  Request = Struct.new(:verb, :target, :headers, :body, keyword_init: true) do
    def path = target.split("?", 2).first

    def query = URI.decode_www_form(target.split("?", 2)[1].to_s)
  end

  # A scripted answer: its status, headers and body, sent in frames, then what the connection does
  # (`:end` closes it, `:hold` keeps it open until the client goes away, writing a keep-alive every
  # `keep_alive` seconds when set, and `:reset` resets it).
  Answer = Struct.new(:status, :headers, :frames, :after, :keep_alive, keyword_init: true)

  def self.snapshot(timestamp)
    "id: #{timestamp}\nevent: stream.snapshot\ndata: #{JSON.generate(answer(timestamp))}\n\n"
  end

  def self.closed(reason, status = nil)
    "event: stream.closed\ndata: #{JSON.generate({ reason:, status: })}\n\n"
  end

  def self.answer(timestamp)
    { data: { points: [{ timestamp:, value: 1.5 }] } }
  end

  def self.events(*frames, after: :end, keep_alive: nil)
    Answer.new(status: 200, headers: { "Content-Type" => "text/event-stream" }, frames:, after:, keep_alive:)
  end

  def self.json(status, body = { error: { message: "HTTP #{status}" } })
    text = JSON.generate(body)
    Answer.new(
      status:,
      headers: { "Content-Type" => "application/json", "Content-Length" => text.bytesize.to_s },
      frames: [text],
      after: :end
    )
  end

  attr_reader :requests

  def initialize(*answers)
    @answers = answers
    @requests = []
    @departed = 0
    @mutex = Mutex.new
    @changed = ConditionVariable.new
    @server = TCPServer.new("127.0.0.1", 0)
    @stopping = false
    @thread = Thread.new { serve }
    return unless block_given?

    begin
      yield self
    ensure
      stop
    end
  end

  def url
    "http://127.0.0.1:#{@server.addr[1]}/api/v1"
  end

  def client
    Whop_sdk::Client.new(token: "sk_test", base_url: url, api_version_date: API_VERSION)
  end

  # How many connections the client has closed while the server held them open.
  def departed
    @mutex.synchronize { @departed }
  end

  # Waits up to `seconds` for the client to close `count` held connections; returns whether it did.
  def wait_for_departures(count, seconds = 2)
    deadline = Process.clock_gettime(Process::CLOCK_MONOTONIC) + seconds
    @mutex.synchronize do
      while @departed < count
        remaining = deadline - Process.clock_gettime(Process::CLOCK_MONOTONIC)
        return false if remaining <= 0

        @changed.wait(@mutex, remaining)
      end
      true
    end
  end

  def stop
    @stopping = true
    @server.close
    @thread.join
  end

  private

  def serve
    loop do
      socket = @server.accept
      Thread.new(socket) { |connection| handle(connection) }
    end
  rescue IOError, SystemCallError
    nil
  end

  def handle(socket)
    request = read_request(socket)
    return if request.nil?

    answer = @mutex.synchronize do
      @requests << request
      @answers[@requests.size - 1]
    end
    answer ||= self.class.json(599, { error: { message: "No answer scripted for request #{@requests.size}" } })
    respond(socket, answer)
  rescue IOError, SystemCallError
    nil
  ensure
    socket.close unless socket.closed?
  end

  def read_request(socket)
    line = socket.gets("\r\n")
    return if line.nil?

    verb, target = line.split(" ", 3)
    headers = {}
    while (header = socket.gets("\r\n")) && header != "\r\n"
      name, value = header.chomp("\r\n").split(":", 2)
      headers[name.downcase] = value.strip
    end
    body = socket.read(headers.fetch("content-length", "0").to_i)
    Request.new(verb:, target:, headers:, body:)
  end

  def respond(socket, answer)
    head = ["HTTP/1.1 #{answer.status} Scripted", *answer.headers.map { |name, value| "#{name}: #{value}" },
            "Connection: close"]
    socket.write("#{head.join("\r\n")}\r\n\r\n")
    answer.frames.each { |frame| socket.write(frame) }
    case answer.after
    when :hold then hold(socket, answer.keep_alive)
    when :reset then reset(socket)
    end
  end

  # Resets the connection once the client has had time to read what was sent: a reset discards
  # whatever the client's socket has received and not yet read.
  def reset(socket)
    sleep(0.2)
    socket.setsockopt(Socket::SOL_SOCKET, Socket::SO_LINGER, [1, 0].pack("ii"))
  end

  def hold(socket, keep_alive)
    until @stopping
      if socket.wait_readable(keep_alive || 0.05)
        break if socket.read_nonblock(1024, exception: false).nil?
      elsif keep_alive
        socket.write(KEEP_ALIVE)
      end
    end
  rescue IOError, SystemCallError
    nil
  ensure
    depart unless @stopping
  end

  def depart
    @mutex.synchronize do
      @departed += 1
      @changed.broadcast
    end
  end
end

# A server that accepts connections and never answers, so a client connecting over TLS stays in its
# handshake: a connection still opening, without depending on how a network treats an unroutable
# address.
class SilentServer
  def initialize
    @server = TCPServer.new("127.0.0.1", 0)
    @connections = Thread::Queue.new
    @thread = Thread.new do
      loop { @connections << @server.accept }
    rescue IOError, SystemCallError
      nil
    end
    yield self
  ensure
    stop
  end

  def client
    Whop_sdk::Client.new(token: "sk_test", base_url: "https://127.0.0.1:#{@server.addr[1]}/api/v1")
  end

  private

  def stop
    @server.close
    @thread.join
    @connections.close
    while (connection = @connections.pop)
      connection.close
    end
  end
end
