# frozen_string_literal: true

module Whop_sdk
  module FinancialActivity
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns an account's or user's activity feed: every movement of money in or out.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      # @option params [Boolean, nil] :include_owned_accounts
      # @option params [Boolean, nil] :include_resource
      # @option params [Whop_sdk::FinancialActivity::Types::ListFinancialActivityRequestLineTypesItem, nil] :line_types
      # @option params [String, nil] :currency
      # @option params [String, nil] :posted_after
      # @option params [String, nil] :posted_before
      # @option params [String, nil] :available_after
      # @option params [String, nil] :available_before
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      #
      # @example
      #   client.financial_activity.list
      #
      # @return [Whop_sdk::FinancialActivity::Types::ListFinancialActivityResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["include_owned_accounts"] = params[:include_owned_accounts] if params.key?(:include_owned_accounts)
        query_params["include_resource"] = params[:include_resource] if params.key?(:include_resource)
        query_params["line_types"] = params[:line_types] if params.key?(:line_types)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["posted_after"] = params[:posted_after] if params.key?(:posted_after)
        query_params["posted_before"] = params[:posted_before] if params.key?(:posted_before)
        query_params["available_after"] = params[:available_after] if params.key?(:available_after)
        query_params["available_before"] = params[:available_before] if params.key?(:available_before)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "financial-activity",
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
          Whop_sdk::FinancialActivity::Types::ListFinancialActivityResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
