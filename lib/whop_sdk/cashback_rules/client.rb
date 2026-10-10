# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
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

      # Creates a future-dated card cashback rule for your direct connected accounts, funded by the authenticated
      # platform account. Creating a rule does not transfer funds; pay cashback out with `POST /cashback_rules/payout`.
      # Requires `payout:transfer_funds`. Supports `Idempotency-Key` for safe retries.
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
      #     rate_bps: 500,
      #     starts_at: "2026-01-01T12:00:00Z"
      #   )
      #
      # @return [Whop_sdk::Types::CashbackRule]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::CashbackRule.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the cashback rules funded by the authenticated platform account, including scheduled, expired, and
      # discarded rules. Requires an account-scoped credential with `payout:transfer:read`.
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
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::CashbackRules::Types::ListCashbackRulesResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Pays out cashback on demand from the authenticated platform's available USD balance to its direct connected
      # accounts. Covers completed, unpaid card transactions created before the request, each under its latest matching
      # rule, which must be funded by the authenticated platform. Filters combine, and an empty body includes every
      # eligible transaction. Payouts process in the background and amounts are calculated then, so the response
      # confirms queuing, not payment. If a payout fails for insufficient funds, add USD to the platform's balance.
      # Requires `payout:transfer_funds`. Supports `Idempotency-Key`, and overlapping requests cannot pay the same card
      # transaction twice.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::CashbackRules::Types::PayoutCashbackRulesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.cashback_rules.payout
      #
      # @return [Whop_sdk::Types::CashbackPayout]
      def payout(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "cashback_rules/payout",
          body: Whop_sdk::CashbackRules::Types::PayoutCashbackRulesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::CashbackPayout.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the merchant filters, description, or expiration of a cashback rule funded by the authenticated platform
      # account; its start, rate, and accounts can't change. Omitted fields stay unchanged. Scheduled, active, and
      # expired rules can be updated, but discarded rules can't. Updating a rule does not transfer funds. Requires
      # `payout:transfer_funds`.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::CashbackRules::Types::UpdateCashbackRulesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.cashback_rules.update(id: "id")
      #
      # @return [Whop_sdk::Types::CashbackRule]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::CashbackRules::Types::UpdateCashbackRulesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "PATCH",
          path: "cashback_rules/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::CashbackRule.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
