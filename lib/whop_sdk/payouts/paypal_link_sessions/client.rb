# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module PaypalLinkSessions
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

        # Starts a Log in with PayPal session so PayPal itself can confirm the account holder owns a verified PayPal
        # account. Send the holder to `authorize_url`; after they log in, PayPal returns them to Whop, and Whop
        # redirects the browser to your `return_url` with a `paypal_link_token` query parameter to pass to `POST
        # /payouts/methods`. If the login fails or is canceled, `return_url` receives an `error` query parameter
        # (`paypal_login_canceled` or `paypal_login_failed`) instead. The payout method saved this way pays the email on
        # the PayPal account, and its holder name must match the name on the account's payout setup. PayPal login is
        # rolling out per account: until it is enabled for the account this answers `403 forbidden`, and
        # `supports_paypal_login` on `GET /payouts/supported_methods` is false.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Payouts::PaypalLinkSessions::Types::CreatePaypalLinkSessionsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.payouts.paypal_link_sessions.create(
        #     return_url: "https://example.com/settings/payouts",
        #     supported_payout_method_id: "podst_xxxxxxxxxxxxxx"
        #   )
        #
        # @return [Whop_sdk::Payouts::PaypalLinkSessions::Types::CreatePaypalLinkSessionsResponse]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "payouts/paypal_link_sessions",
            body: Whop_sdk::Payouts::PaypalLinkSessions::Types::CreatePaypalLinkSessionsRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Whop_sdk::Payouts::PaypalLinkSessions::Types::CreatePaypalLinkSessionsResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
