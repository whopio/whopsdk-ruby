# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a future-dated card cashback rule funded by the authenticated platform account. Requires
      # payout:transfer_funds. Both the raw merchant name and four-digit MCC are required. Optionally limit the rule to
      # one direct connected account. The funding account is derived from the credential and cannot be supplied.
      # Creation does not transfer funds. Supports Idempotency-Key for safe retries.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::CashbackRules::Types::CreateCashbackRulesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.cashback_rules.create(
      #     merchant_category_code: "5734",
      #     merchant_name: "ACME SOFTWARE",
      #     rate_bps: 500,
      #     starts_at: "2026-01-01T12:00:00Z"
      #   )
      #
      # @return [Whop_sdk::Types::CashbackRule]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "cashback_rule",
          body: Whop_sdk::CashbackRules::Types::CreateCashbackRulesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::CashbackRule.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists all cashback rules funded by the authenticated platform account. Includes scheduled, expired, and
      # discarded rules. Requires payout:transfer:read. Account-scoped credentials are required; there is no
      # caller-supplied funding-account filter.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::CashbackRules::Types::ListCashbackRulesRequestOrder, nil] :order
      # @option params [Whop_sdk::CashbackRules::Types::ListCashbackRulesRequestDirection, nil] :direction
      #
      # @example
      #   client.cashback_rules.list
      #
      # @return [Whop_sdk::CashbackRules::Types::ListCashbackRulesResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "cashback_rules",
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
            parsed_response = Whop_sdk::CashbackRules::Types::ListCashbackRulesResponse.load(response.body)
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
