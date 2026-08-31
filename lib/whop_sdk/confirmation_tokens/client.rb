# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Mints a single-use, short-lived confirmation token from what the buyer entered on your collection surface: the
      # payment method payload, billing details, and attested save consent. Public and rate-limited — the account_id in
      # the body scopes the token but does not authenticate. Confirm it with POST /payments from your server.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.confirmation_tokens.create(
      #     account_id: "biz_xxxxxxxxxxxxxx",
      #     billing_details: {
      #       address: {
      #         city: "Austin",
      #         country: "US",
      #         line1: "123 Main St",
      #         postal_code: "78701"
      #       },
      #       email: "buyer@example.com",
      #       name: "Buyer Name"
      #     },
      #     payment_method: {
      #       card: {
      #         brand: "visa",
      #         last4: "4242",
      #         token_intent: "bt_ti_123"
      #       },
      #       category: "card",
      #       type: "card"
      #     },
      #     setup_future_usage: "off_session"
      #   )
      #
      # @return [Whop_sdk::Types::ConfirmationToken]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "confirmation_tokens",
          body: Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::ConfirmationToken.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a token's display-safe preview — never the underlying payment credential. Public and rate-limited: the
      # account_id query param must match the account the token was minted for.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :account_id
      #
      # @example
      #   client.confirmation_tokens.retrieve(
      #     id: "id",
      #     account_id: "account_id"
      #   )
      #
      # @return [Whop_sdk::Types::ConfirmationToken]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "confirmation_tokens/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::ConfirmationToken.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
