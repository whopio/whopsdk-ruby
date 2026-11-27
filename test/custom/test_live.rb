# frozen_string_literal: true

require "minitest/autorun"
require_relative "../test_helper"
require_relative "live_server"
require "minitest/mock"

module Whop_sdk
  class TestLive < Minitest::Test
    FROM = "2026-11-01"
    TO = "2026-11-30"
    Answer = Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponse

    def setup
      WebMock.disable! if defined?(WebMock)
    end

    def snapshot(timestamp) = LiveServer.snapshot(timestamp)
    def closed(reason, status = nil) = LiveServer.closed(reason, status)
    def events(*frames, **) = LiveServer.events(*frames, **)
    def status(code) = LiveServer.json(code)

    def timestamps(answers)
      answers.map { |answer| answer.data.points.first.timestamp }
    end

    def watch(server, **, &)
      server.client.stats.time_series.watch(metric: "gmv", from: FROM, to: TO, **, &)
    end

    def wait_for(server, **)
      server.client.stats.time_series.wait_for(metric: "gmv", from: FROM, to: TO, **)
    end

    def no_jitter(&)
      Whop_sdk::Live.stub(:jitter, 0.0, &)
    end

    def recording(waits)
      ->(_session, seconds) do
        waits << seconds
        false
      end
    end

    def test_yields_each_snapshot_as_the_reads_answer
      LiveServer.new(events(snapshot(1), LiveServer::KEEP_ALIVE, snapshot(2), closed("not_live", 200))) do |server|
        answers = watch(server).to_a

        assert_equal [1, 2], timestamps(answers)
        assert(answers.all?(Answer))
        assert_in_delta 1.5, answers.first.data.points.first.value
        assert_equal 1, server.requests.size
      end
    end

    def test_sends_the_reads_request_asking_for_the_event_stream
      LiveServer.new(events(snapshot(1), closed("not_live"))) do |server|
        watch(server, account_id: "biz_1").to_a

        request = server.requests.first

        assert_equal "GET", request.verb
        assert_equal "/api/v1/stats/time_series/gmv", request.path
        assert_equal [%w[account_id biz_1], ["from", FROM], ["to", TO]], request.query.sort
        assert_equal "text/event-stream", request.headers["accept"]
        assert_equal "Bearer sk_test", request.headers["authorization"]
        assert_equal LiveServer::API_VERSION, request.headers["api-version-date"]
      end
    end

    def test_sends_the_reads_request_options_on_every_connection_but_not_its_retries
      drops = []
      LiveServer.new(status(503), events(snapshot(1), closed("not_live"))) do |server|
        options = { additional_headers: { "X-Trace" => "abc" }, additional_query_parameters: { "extra" => "1" } }

        answers = watch(server, request_options: options, max_backoff: 0, on_disconnect: drops.method(:push)).to_a

        assert_equal [1], timestamps(answers)
        assert_equal(%w[abc abc], server.requests.map { |request| request.headers["x-trace"] })
        assert_equal(%w[1 1], server.requests.map { |request| request.query.to_h["extra"] })
        assert_equal [503], drops.map(&:code)
      end
    end

    def test_reconnects_after_a_reconnect_close_without_reporting_a_drop
      drops = []
      LiveServer.new(events(snapshot(1), closed("reconnect")), events(snapshot(2), closed("not_live", 200))) do |server|
        assert_equal [1, 2], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
        assert_equal 2, server.requests.size
        assert_empty drops
      end
    end

    def test_reads_a_cr_that_ends_the_body_as_the_end_of_its_last_line
      close = "event: stream.closed\rdata: #{JSON.generate({ reason: "not_live", status: nil })}\r\r"
      drops = []
      LiveServer.new(events(snapshot(1), close)) do |server|
        assert_equal [1], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
        assert_empty drops
        assert_equal 1, server.requests.size
      end
    end

    def test_counts_a_stream_that_ends_without_a_close_as_a_drop
      drops = []
      LiveServer.new(events(snapshot(1)), events(snapshot(2), closed("not_live"))) do |server|
        assert_equal [1, 2], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
        assert_equal [Whop_sdk::Live::StreamEndedError], drops.map(&:class)
      end
    end

    def test_reconnects_after_a_reset_connection
      drops = []
      LiveServer.new(events(snapshot(1), after: :reset), events(snapshot(2), closed("not_live"))) do |server|
        assert_equal [1, 2], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
        assert_equal 1, drops.size
        assert(Whop_sdk::Live.drop?(drops.first))
      end
    end

    def test_drops_and_reconnects_a_connection_that_receives_nothing_while_idle
      drops = []
      LiveServer.new(events(snapshot(1), after: :hold), events(snapshot(2), closed("not_live"))) do |server|
        Whop_sdk::Live.stub(:idle_timeout, 0.2) do
          assert_equal [1, 2], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
        end
        assert_equal [Net::ReadTimeout], drops.map(&:class)
      end
    end

    def test_ends_the_stream_on_a_callers_timeout_and_drops_only_on_the_transports
      drops = []
      LiveServer.new(events(snapshot(1), after: :hold), events(snapshot(2), after: :hold)) do |server|
        assert_raises(Timeout::Error) do
          Timeout.timeout(0.5, Timeout::Error) { watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a }
        end
        assert_empty drops
        assert_equal 1, server.requests.size
      end
      [Net::OpenTimeout, Net::ReadTimeout, Net::WriteTimeout].each { |error| assert(Whop_sdk::Live.drop?(error.new)) }
      refute(Whop_sdk::Live.drop?(Timeout::Error.new))
    end

    def test_backs_off_until_a_connection_stays_open_30_seconds_answers_or_not
      waits = []
      received = []
      now = 0.0
      answers = [
        status(503), status(502), status(500),
        events(snapshot(1), closed("reconnect")), events(snapshot(2), closed("reconnect")),
        events(snapshot(3), closed("not_live"))
      ]
      LiveServer.new(*answers) do |server|
        Whop_sdk::Live.stub(:clock, -> { now }) do
          Whop_sdk::Live.stub(:jitter, 0.5) do
            Whop_sdk::Live.stub(:pause, recording(waits)) do
              # The first answer arrives on the fourth connection, which then stays open 30 seconds.
              watch(server).each do |answer|
                received << answer
                now += 30 if received.size == 1
              end
            end
          end
        end
      end

      assert_equal [1, 2, 3], timestamps(received)
      assert_equal [0.5, 1.125, 2.25, 0.5, 1.125], waits
    end

    def test_keeps_backing_off_after_a_connect_that_hung_past_30_seconds
      waits = []
      now = 0.0
      LiveServer.new(status(503), status(503), status(503), events(snapshot(1), closed("not_live"))) do |server|
        # The third connect takes 45 seconds before its 503.
        hung = -> do
          now = 45.0 if server.requests.size == 3
          now
        end
        Whop_sdk::Live.stub(:clock, hung) do
          Whop_sdk::Live.stub(:jitter, 0.5) do
            Whop_sdk::Live.stub(:pause, recording(waits)) do
              assert_equal [1], timestamps(watch(server).to_a)
            end
          end
        end
      end

      assert_equal [0.5, 1.125, 2.25], waits
    end

    def test_keeps_backing_off_after_a_connection_that_dropped_within_30_seconds
      waits = []
      LiveServer.new(status(503), events(snapshot(1), closed("reconnect")), events(snapshot(2), closed("not_live"))) do |server|
        no_jitter do
          Whop_sdk::Live.stub(:pause, recording(waits)) do
            assert_equal [1, 2], timestamps(watch(server).to_a)
          end
        end
      end

      assert_equal [0.0, 1.0], waits
    end

    def test_backs_off_from_up_to_a_second_to_its_cap_with_up_to_a_quarter_of_jitter
      assert_equal([0, 1, 2, 4, 8, 16, 30, 30], (0..7).map { |attempt| Whop_sdk::Live.backoff_seconds(attempt, 30, 0.0) })
      assert_equal([0.25, 1.0], [0.25, 1.0].map { |fraction| Whop_sdk::Live.backoff_seconds(0, 30, fraction) })
      assert_in_delta 0.5, Whop_sdk::Live.backoff_seconds(0, 0.5, 1.0)
      assert_in_delta 5.0, Whop_sdk::Live.backoff_seconds(3, 30, 1.0)
    end

    def test_ends_quietly_when_the_read_stops_being_live
      LiveServer.new(events(snapshot(1), closed("not_live"))) do |server|
        assert_equal [1], timestamps(watch(server).to_a)
      end
    end

    def test_raises_when_the_stream_closes_for_good
      [["not_live", 403], ["unreadable", nil]].each do |reason, code|
        LiveServer.new(events(snapshot(1), closed(reason, code))) do |server|
          seen = []
          raised = assert_raises(Whop_sdk::Live::StreamClosedError) { watch(server).each { |answer| seen << answer } }

          assert_equal [reason, code], [raised.reason, raised.status]
          assert_equal [1], timestamps(seen)
        end
      end
    end

    def test_a_failing_finish_does_not_turn_a_final_close_into_a_reconnect
      finish_raising do
        LiveServer.new(events(snapshot(1), closed("not_live", 403))) do |server|
          raised = assert_raises(Whop_sdk::Live::StreamClosedError) { watch(server).to_a }

          assert_equal ["not_live", 403], [raised.reason, raised.status]
        end
        LiveServer.new(events(snapshot(1), closed("not_live", 200))) do |server|
          assert_equal [1], timestamps(watch(server).to_a)
        end
      end
    end

    def finish_raising
      Net::HTTP.alias_method(:__finish_before_test, :finish)
      Net::HTTP.remove_method(:finish)
      Net::HTTP.define_method(:finish) do
        __finish_before_test
        raise IOError, "closed stream"
      end
      yield
    ensure
      Net::HTTP.remove_method(:finish)
      Net::HTTP.alias_method(:finish, :__finish_before_test)
      Net::HTTP.remove_method(:__finish_before_test)
    end

    def test_yields_a_plain_answer_once_then_ends
      LiveServer.new(LiveServer.json(200, LiveServer.answer(7))) do |server|
        answers = watch(server).to_a

        assert_equal [7], timestamps(answers)
        assert_kind_of Answer, answers.first
        assert_equal 1, server.requests.size
      end
    end

    def test_raises_the_reads_own_error_for_a_status_a_reconnect_would_get_again
      {
        400 => Whop_sdk::Errors::ClientError,
        401 => Whop_sdk::Errors::UnauthorizedError,
        403 => Whop_sdk::Errors::ForbiddenError,
        404 => Whop_sdk::Errors::NotFoundError,
        410 => Whop_sdk::Errors::ClientError,
        422 => Whop_sdk::Errors::ClientError
      }.each do |code, error|
        drops = []
        LiveServer.new(status(code)) do |server|
          raised = assert_raises(error) { watch(server, on_disconnect: drops.method(:push)).first }

          assert_instance_of error, raised
          assert_equal code, raised.code
          assert_equal JSON.generate({ error: { message: "HTTP #{code}" } }), raised.message
          assert_equal 1, server.requests.size
          assert_empty drops
        end
      end
    end

    def test_raises_the_reads_own_error_for_a_client_error_whose_body_never_finishes
      stalled = LiveServer::Answer.new(
        status: 401,
        headers: { "Content-Type" => "application/json", "Content-Length" => "100" },
        frames: ['{"error":'],
        after: :hold
      )
      drops = []
      LiveServer.new(stalled, events(snapshot(2), closed("not_live"))) do |server|
        Whop_sdk::Live.stub(:idle_timeout, 0.2) do
          raised = assert_raises(Whop_sdk::Errors::UnauthorizedError) do
            watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a
          end
          assert_equal 401, raised.code
        end
        assert_equal 1, server.requests.size
        assert_empty drops
      end
    end

    def test_a_certificate_the_server_fails_ends_the_stream_while_another_tls_error_reconnects
      failed = OpenSSL::SSL::SSLError.new(
        "SSL_connect returned=1 errno=0 state=error: certificate verify failed (self-signed certificate)"
      )

      refute(Whop_sdk::Live.drop?(failed))
      assert(Whop_sdk::Live.drop?(OpenSSL::SSL::SSLError.new("SSL_read: unexpected eof while reading")))
    end

    def test_reconnects_after_a_client_error_the_server_retries
      [408, 429].each do |code|
        drops = []
        LiveServer.new(status(code), events(snapshot(1), closed("not_live"))) do |server|
          assert_equal [1], timestamps(watch(server, max_backoff: 0, on_disconnect: drops.method(:push)).to_a)
          assert_equal [code], drops.map(&:code)
        end
      end
    end

    def test_breaking_out_of_a_block_closes_the_connection
      LiveServer.new(events(snapshot(1), snapshot(2), after: :hold)) do |server|
        seen = []
        watch(server) do |answer|
          seen << answer
          break
        end

        assert_equal [1], timestamps(seen)
        assert server.wait_for_departures(1)
      end
    end

    def test_an_error_raised_by_the_callers_block_passes_through_without_a_reconnect
      drops = []
      LiveServer.new(events(snapshot(1), after: :hold)) do |server|
        raised = assert_raises(IOError) { watch(server, on_disconnect: drops.method(:push)) { raise IOError, "mine" } }

        assert_equal "mine", raised.message
        assert_nil raised.cause
        assert_empty drops
        assert_equal 1, server.requests.size
        assert server.wait_for_departures(1)
      end
    end

    [0.2, nil].each do |keep_alive|
      define_method(:"test_close_from_another_thread_ends_a_loop_waiting_between_events_#{keep_alive ? "with" : "without"}_keep_alives") do
        drops = []
        LiveServer.new(events(snapshot(1), after: :hold, keep_alive:)) do |server|
          stream = watch(server, on_disconnect: drops.method(:push))
          seen = []
          first = Queue.new
          reader = Thread.new do
            stream.each do |answer|
              seen << answer
              first << true
            end
          end
          first.pop(timeout: 2)
          sleep(0.3)
          started = Process.clock_gettime(Process::CLOCK_MONOTONIC)
          stream.close

          assert reader.join(2), "the loop did not end"
          assert_operator Process.clock_gettime(Process::CLOCK_MONOTONIC) - started, :<, 1
          assert_equal [1], timestamps(seen)
          assert server.wait_for_departures(1)
          assert_equal 1, server.requests.size
          assert_empty drops
        end
      end
    end

    def test_close_ends_an_external_iteration_and_its_connection
      LiveServer.new(events(snapshot(1), snapshot(2), after: :hold)) do |server|
        stream = watch(server)

        assert_equal [1], timestamps([stream.next])
        stream.close

        assert server.wait_for_departures(1)
        assert_raises(StopIteration) { stream.next }
        assert_empty stream.to_a
      end
    end

    def test_close_from_another_thread_ends_a_backoff
      LiveServer.new(status(503)) do |server|
        stream = watch(server, max_backoff: 30)
        Thread.new do
          sleep(0.2)
          stream.close
        end
        started = Process.clock_gettime(Process::CLOCK_MONOTONIC)

        Whop_sdk::Live.stub(:jitter, 1.0) { assert_empty stream.to_a }

        assert_operator Process.clock_gettime(Process::CLOCK_MONOTONIC) - started, :<, 0.9
        assert_equal 1, server.requests.size
      end
    end

    def elapsed_since(started)
      Process.clock_gettime(Process::CLOCK_MONOTONIC) - started
    end

    def test_close_from_another_thread_ends_a_connection_still_opening
      drops = []
      SilentServer.new do |server|
        stream = server.client.stats.time_series.watch(metric: "gmv", from: FROM, to: TO, on_disconnect: drops.method(:push))
        Thread.new do
          sleep(0.2)
          stream.close
        end
        started = Process.clock_gettime(Process::CLOCK_MONOTONIC)

        assert_empty stream.to_a
        assert_operator elapsed_since(started), :<, 1
        assert_empty drops
      end
    end

    def test_wait_for_times_out_while_a_connection_is_still_opening
      SilentServer.new do |server|
        started = Process.clock_gettime(Process::CLOCK_MONOTONIC)

        assert_raises(Whop_sdk::Live::WaitForTimeoutError) do
          server.client.stats.time_series.wait_for(metric: "gmv", from: FROM, to: TO, until: ->(_answer) { true }, timeout: 0.2)
        end
        assert_operator elapsed_since(started), :<, 1
      end
    end

    def test_wait_for_returns_the_first_answer_until_accepts
      LiveServer.new(events(snapshot(1), snapshot(2), snapshot(3), closed("not_live"))) do |server|
        found = wait_for(server, until: ->(answer) { answer.data.points.first.timestamp >= 2 })

        assert_equal 2, found.data.points.first.timestamp
      end
    end

    def test_wait_for_raises_on_the_first_answer_fail_when_accepts
      LiveServer.new(events(snapshot(1), snapshot(2), closed("not_live"))) do |server|
        raised = assert_raises(Whop_sdk::Live::WaitForFailedError) do
          wait_for(
            server,
            until: ->(answer) { answer.data.points.first.timestamp == 2 },
            fail_when: ->(answer) { answer.data.points.first.timestamp == 1 }
          )
        end

        assert_equal 1, raised.answer.data.points.first.timestamp
      end
    end

    def test_wait_for_raises_once_its_timeout_passes_and_closes_its_connection
      LiveServer.new(events(snapshot(1), after: :hold)) do |server|
        raised = assert_raises(Whop_sdk::Live::WaitForTimeoutError) do
          wait_for(server, until: ->(_answer) { false }, timeout: 0.2)
        end

        assert_in_delta 0.2, raised.timeout
        assert server.wait_for_departures(1)
      end
    end

    def test_wait_for_raises_when_the_read_stops_being_live_before_a_match
      LiveServer.new(events(snapshot(1), closed("not_live"))) do |server|
        assert_raises(Whop_sdk::Live::StreamClosedError) { wait_for(server, until: ->(_answer) { false }) }
      end
    end

    def test_wait_for_raises_the_reads_own_error
      LiveServer.new(status(401)) do |server|
        assert_raises(Whop_sdk::Errors::UnauthorizedError) { wait_for(server, until: ->(_answer) { true }) }
      end
    end

    def test_wait_for_closes_its_connection_as_it_returns
      LiveServer.new(events(snapshot(1), after: :hold)) do |server|
        found = wait_for(server, until: ->(_answer) { true })

        assert_equal 1, found.data.points.first.timestamp
        assert server.wait_for_departures(1)
        assert_equal 1, server.requests.size
      end
    end
  end
end
