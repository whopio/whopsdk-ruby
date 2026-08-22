# frozen_string_literal: true

module Whop_sdk
  module Topups
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Add funds to a company's platform balance by charging a stored payment method. Top-ups have no fees or taxes and
      # do not count as revenue.
      #
      # Required permissions:
      #  - `payment:charge`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Topups::Types::CreateTopupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.topups.create(
      #     amount: 6.9,
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     currency: "usd",
      #     payment_method_id: "pmt_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::Topup]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "topups",
          body: Whop_sdk::Topups::Types::CreateTopupsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Topup.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
