# frozen_string_literal: true

module Whop_sdk
  module AccountLinks
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Generate a URL that directs a sub-merchant to their account portal, such as the hosted payouts dashboard or the
      # KYC onboarding flow.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::AccountLinks::Types::CreateAccountLinksRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.account_links.create(
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     refresh_url: "refresh_url",
      #     return_url: "return_url",
      #     use_case: "account_onboarding"
      #   )
      #
      # @return [Whop_sdk::Types::AccountLink]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "account_links",
          body: Whop_sdk::AccountLinks::Types::CreateAccountLinksRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::AccountLink.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
