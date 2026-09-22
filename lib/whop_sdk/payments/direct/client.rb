# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
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

        # Charges a buyer for a plan from card details the caller holds itself, for integrators whose own systems are
        # PCI compliant. Card details are accepted only on the vault host, where the card is tokenized before it reaches
        # Whop; the official SDKs route this operation there, and raw card details sent to the regular host are refused.
        # (Whop's own clients, which tokenize with the Basis Theory SDK, send the resulting token intent id to the
        # regular host.) Collection runs in the background: the response is the payment as created, not its outcome —
        # poll Retrieve status for how far it has got and what the buyer must still do, such as 3D Secure.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Payments::Direct::Types::CreateDirectRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.payments.direct.create(
        #     account_id: "biz_xxxxxxxxxxxxxx",
        #     billing_details: {
        #       address: {
        #         country: "US",
        #         postal_code: "94105"
        #       },
        #       email: "dana@shinetime.example",
        #       name: "Dana Shine"
        #     },
        #     payment_method: {
        #       type: "card"
        #     }
        #   )
        #
        # @return [Whop_sdk::Types::Payment]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:vault),
            method: "POST",
            path: "payments/direct",
            body: Whop_sdk::Payments::Direct::Types::CreateDirectRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::Payment.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
