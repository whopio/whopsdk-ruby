# frozen_string_literal: true

module Whop_sdk
  module Events
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists identity-linked events, most recent first by default. Pass identifier for one person's journey, or omit it
      # to list events for an account within an explicit time range. Pass direction=asc to read a journey forwards from
      # where it starts. Events are shaped like the POST /events intake: attribution in context, identity in user.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :identifier
      # @option params [String, nil] :account_id
      # @option params [String, nil] :from
      # @option params [String, nil] :to
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Whop_sdk::Events::Types::ListEventsRequestDirection, nil] :direction
      # @option params [String, nil] :event
      # @option params [String, nil] :source
      # @option params [Whop_sdk::Events::Types::ListEventsRequestAttributionModel, nil] :attribution_model
      # @option params [String, nil] :country
      # @option params [String, nil] :city
      # @option params [String, nil] :device
      # @option params [String, nil] :browser
      # @option params [String, nil] :os
      # @option params [String, nil] :utm_source
      # @option params [String, nil] :hostname
      # @option params [String, nil] :page
      #
      # @example
      #   client.events.list
      #
      # @return [Whop_sdk::Events::Types::ListEventsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["identifier"] = params[:identifier] if params.key?(:identifier)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["event"] = params[:event] if params.key?(:event)
        query_params["source"] = params[:source] if params.key?(:source)
        query_params["attribution_model"] = params[:attribution_model] if params.key?(:attribution_model)
        query_params["country"] = params[:country] if params.key?(:country)
        query_params["city"] = params[:city] if params.key?(:city)
        query_params["device"] = params[:device] if params.key?(:device)
        query_params["browser"] = params[:browser] if params.key?(:browser)
        query_params["os"] = params[:os] if params.key?(:os)
        query_params["utm_source"] = params[:utm_source] if params.key?(:utm_source)
        query_params["hostname"] = params[:hostname] if params.key?(:hostname)
        query_params["page"] = params[:page] if params.key?(:page)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "events",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::Events::Types::ListEventsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Tracks a conversion or engagement event for an account.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Events::Types::CreateEventsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.events.create(
      #     account_id: "biz_xxxxxxxxxxxxxx",
      #     event_name: "coating_deposit_paid"
      #   )
      #
      # @return [Whop_sdk::Events::Types::CreateEventsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "events",
          body: Whop_sdk::Events::Types::CreateEventsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Events::Types::CreateEventsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a fully anonymized feed of recent platform-wide money movement, most recent first: purchases, affiliate
      # commissions, card and ad spend, app revenue, off-platform sales, wallet deposits, card loads, claimed drops,
      # transfers between accounts, and referral bonuses. Items carry only a `type`, the underlying event name, a USD
      # amount, a coarse location under `user`, and a timestamp coarsened to the start of the minute; missing fields are
      # omitted, not nulled. The payload is identical for every caller; no auth is required.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :event
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      #
      # @example
      #   client.events.pulse
      #
      # @return [Whop_sdk::Events::Types::PulseEventsResponse]
      def pulse(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["event"] = params[:event] if params.key?(:event)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "events/pulse",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::Events::Types::PulseEventsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Checks whether the Whop pixel is installed for an account. Recent pixel events count as proof on their own, so
      # an account that has sent data lately comes back installed without a `url`. Pass a `url` and events from that
      # page settle it; conversion events are also read across the hostname because they commonly fire on a later
      # confirmation page. If the requested page hasn't sent any events lately, it is fetched and read for the pixel and
      # conversion events wired on it. `installed` is only true when the pixel was actually seen — in the account's
      # events or in the page.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Events::Types::ValidatePixelEventsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.events.validate_pixel
      #
      # @return [Whop_sdk::Types::PixelValidation]
      def validate_pixel(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "events/validate_pixel",
          body: Whop_sdk::Events::Types::ValidatePixelEventsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::PixelValidation.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
