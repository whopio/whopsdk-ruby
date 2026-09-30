# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      # @param base_url [String, nil]
      # @param environment [Hash[Symbol, String], nil]
      #
      # @return [void]
      def initialize(client:, base_url: nil, environment: nil)
        @client = client
        @base_url = base_url
        @environment = environment
      end

      # Lists an account's recommendations and generation requests, newest first by default. Without an account,
      # signed-out visitors receive a business-setup template and eligible users receive their saved setup
      # recommendation. With `has_run` and no account, users receive the recommendations run on every account they can
      # read.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceRequestStatus, nil] :status
      # @option params [String, nil] :input
      # @option params [Boolean, nil] :has_run
      # @option params [Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceRequestOrder, nil] :order
      # @option params [Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.economic_intelligence.list
      #
      # @return [Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["input"] = params[:input] if params.key?(:input)
        query_params["has_run"] = params[:has_run] if params.key?(:has_run)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "economic_intelligence",
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
            parsed_response = Whop_sdk::EconomicIntelligence::Types::ListEconomicIntelligenceResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Updates a recommendation status, records feedback, or both. Send `sentiment` to rate it. Include `status:
      # superseded` to retire a ready recommendation and request replacements; a rating alone leaves its status
      # unchanged. To run a recommendation yourself, send `status: running` to start, then `status: executed` when it is
      # carried out (with `result_id` naming what it changed, or `result_page` naming where it worked, so the result
      # links there) or `status: incomplete` if the run ended without carrying it out. Whop AI reports its own runs the
      # same way. Send `status: acknowledged` once an executed run's result has been seen.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::EconomicIntelligence::Types::UpdateEconomicIntelligenceRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.economic_intelligence.update(id: "id")
      #
      # @return [Whop_sdk::Types::EconomicIntelligence]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::EconomicIntelligence::Types::UpdateEconomicIntelligenceRequest.new(params).to_h
        non_body_param_names = %w[id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "PATCH",
          path: "economic_intelligence/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::EconomicIntelligence.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
