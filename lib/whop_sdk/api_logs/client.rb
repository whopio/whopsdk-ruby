# frozen_string_literal: true

module Whop_sdk
  module APILogs
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the requests served by Whop's API with the account's API keys, newest first — every surface (GraphQL,
      # REST, and native /api/v1), reads and failed requests included.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [String, nil] :operation_name
      # @option params [Whop_sdk::APILogs::Types::ListAPILogsRequestHTTPMethod, nil] :http_method
      # @option params [Whop_sdk::APILogs::Types::ListAPILogsRequestStatus, nil] :status
      # @option params [String, nil] :api_key_id
      # @option params [Integer, nil] :min_duration_ms
      # @option params [Integer, nil] :max_duration_ms
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      #
      # @example
      #   client.api_logs.list
      #
      # @return [Whop_sdk::APILogs::Types::ListAPILogsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["operation_name"] = params[:operation_name] if params.key?(:operation_name)
        query_params["http_method"] = params[:http_method] if params.key?(:http_method)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["api_key_id"] = params[:api_key_id] if params.key?(:api_key_id)
        query_params["min_duration_ms"] = params[:min_duration_ms] if params.key?(:min_duration_ms)
        query_params["max_duration_ms"] = params[:max_duration_ms] if params.key?(:max_duration_ms)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "api_logs",
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
            parsed_response = Whop_sdk::APILogs::Types::ListAPILogsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
