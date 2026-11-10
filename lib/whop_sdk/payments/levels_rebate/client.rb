# frozen_string_literal: true

module Whop_sdk
  module Payments
    module LevelsRebate
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

        # Returns the part of its account's monthly Whop Levels rebate a card payment earned: the processing fee above
        # its level's rate, once the month its fee posted in has closed. The rebate is paid to the account as one sum
        # each month, so the payment's own amounts and fees never change.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :payment_id
        #
        # @example
        #   client.payments.levels_rebate.retrieve(payment_id: "payment_id")
        #
        # @return [Whop_sdk::Types::PaymentLevelsRebate]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "payments/#{URI.encode_uri_component(params[:payment_id].to_s)}/levels_rebate",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Whop_sdk::Types::PaymentLevelsRebate.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
