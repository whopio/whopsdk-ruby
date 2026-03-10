# frozen_string_literal: true

module WhopSDK
  module Resources
    # Account links
    class AccountLinks
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountLinkCreateParams} for more details.
      #
      # Generate a URL that directs a sub-merchant to their account portal, such as the
      # hosted payouts dashboard or the KYC onboarding flow.
      #
      # @overload create(company_id:, refresh_url:, return_url:, use_case:, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to generate the link for, starting with 'bi
      #
      # @param refresh_url [String] The URL to redirect the user to if the session expires and needs to be re-authen
      #
      # @param return_url [String] The URL to redirect the user to when they want to return to your site, such as '
      #
      # @param use_case [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase] The purpose of the account link, such as hosted payouts portal or hosted KYC onb
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AccountLinkCreateResponse]
      #
      # @see WhopSDK::Models::AccountLinkCreateParams
      def create(params)
        parsed, options = WhopSDK::AccountLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "account_links",
          body: parsed,
          model: WhopSDK::Models::AccountLinkCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
