# frozen_string_literal: true

require "minitest/autorun"
require_relative "../test_helper"
require_relative "live_server"

module Whop_sdk
  # Each live read's `watch` and `wait_for` take exactly what the read takes, documented with the
  # read's own types, then their options, and `watch` sends exactly the request the read sends, with
  # `Accept: text/event-stream`. live_reads.json lists the live reads; the pipeline writes it from the
  # spec. Each read and its `watch` are sent to one recording server with a sample for every
  # argument the read documents.
  class TestLiveParity < Minitest::Test
    LIVE_READS = JSON.parse(File.read(File.join(__dir__, "live_reads.json")))
    WATCH_OPTIONS = %i[max_backoff on_disconnect].freeze
    WAIT_FOR_OPTIONS = %i[until fail_when timeout max_backoff on_disconnect].freeze

    def setup
      WebMock.disable! if defined?(WebMock)
    end

    def resource(client, live)
      live["resource"].reduce(client) { |parent, name| parent.public_send(name) }
    end

    # The YARD tags in the comment above a method's definition.
    def tags(method)
      file, line = method.source_location
      comment = File.readlines(file)[0...(line - 1)].reverse.take_while { |text| text.lstrip.start_with?("#") }
      comment.reverse.map { |text| text.strip.delete_prefix("#").strip }.grep(/\A@/)
    end

    def options_of(method, options)
      method.parameters.map(&:last).select { |name| options.include?(name) }
    end

    def without(parameters, options)
      parameters.reject { |kind, name| kind == :block || options.include?(name) }
    end

    # A value for each argument the read documents, but an optional model, which has no sample.
    def arguments_for(read)
      tags(read).grep(/\A@option params /).filter_map do |tag|
        type, name = tag.match(/\[(.+)\] :(\w+)\z/).captures
        optional = type.end_with?(", nil")
        value = sample(type.delete_suffix(", nil"), name)
        raise "#{read.name} requires #{name}, a #{type} with no sample" if value.nil? && !optional

        [name.to_sym, value] unless value.nil?
      end.to_h
    end

    def sample(type, name)
      case type
      when "String" then "#{name} 1/2"
      when "Integer" then 7
      when "Boolean" then true
      when /\AArray\[(.+)\]\z/ then [sample(Regexp.last_match(1), name), sample(Regexp.last_match(1), "#{name} again")]
      else
        constant = Object.const_get(type)
        constant.values.first if constant.singleton_class.include?(Whop_sdk::Internal::Types::Enum)
      end
    end

    LIVE_READS.each do |live|
      name = [*live["resource"], live["read"]].join("_")

      define_method(:"test_#{name}_watch_and_wait_for_take_what_it_takes_then_their_options") do
        client = resource(Whop_sdk::Client.new(token: "t"), live)
        read = client.method(live["read"])
        watch = client.method(live["watch"])
        wait_for = client.method(live["wait_for"])

        assert_equal read.parameters, without(watch.parameters, WATCH_OPTIONS)
        assert_equal WATCH_OPTIONS, options_of(watch, WATCH_OPTIONS)
        assert watch.parameters.assoc(:block), "#{live["watch"]} takes no block"
        assert_equal read.parameters, without(wait_for.parameters, WAIT_FOR_OPTIONS)
        assert_equal WAIT_FOR_OPTIONS, options_of(wait_for, WAIT_FOR_OPTIONS)
        assert_includes wait_for.parameters, %i[keyreq until]
      end

      define_method(:"test_#{name}_watch_and_wait_for_document_its_arguments_and_answer_as_it_does") do
        client = resource(Whop_sdk::Client.new(token: "t"), live)
        read = tags(client.method(live["read"]))
        answer = read.grep(/\A@return /).first[/\[(.+)\]/, 1]

        assert_equal live["answer"], answer
        [live["watch"], live["wait_for"]].each do |method|
          assert_equal read.grep(/\A@option /), tags(client.method(method)).grep(/\A@option /)
        end
        assert_includes tags(client.method(live["watch"])), "@yieldparam answer [#{answer}]"
        assert_includes tags(client.method(live["wait_for"])), "@return [#{answer}]"
      end

      define_method(:"test_#{name}_watch_sends_the_request_it_sends") do
        LiveServer.new(LiveServer.json(404), LiveServer.json(404)) do |server|
          client = resource(server.client, live)
          arguments = arguments_for(client.method(live["read"]))

          assert_raises(Whop_sdk::Errors::NotFoundError) { client.public_send(live["read"], **arguments) }
          assert_raises(Whop_sdk::Errors::NotFoundError) { client.public_send(live["watch"], **arguments).first }

          read, watched = server.requests

          assert_equal [read.verb, read.target, read.body], [watched.verb, watched.target, watched.body]
          assert_equal read.headers.except("accept"), watched.headers.except("accept")
          assert_equal "text/event-stream", watched.headers["accept"]
        end
      end
    end
  end
end
