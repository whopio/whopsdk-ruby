# frozen_string_literal: true

module WhopSDK
  module Resources
    class AccountLinks
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountLinkCreateParams} for more details.
      #
      # Generates a url that a user can be directed to in order to access their
      # sub-merchant account. For example, they can visit the hosted payouts portal or
      # the hosted KYC onboarding flow.
      #
      # @overload create(company_id:, refresh_url:, return_url:, use_case:, request_options: {})
      #
      # @param company_id [String] The ID of the Company to generate the url for. The company must be a sub-merchan
      #
      # @param refresh_url [String] The URL to redirect to if the session expires and needs to be re-authenticated d
      #
      # @param return_url [String] The URL to redirect to when the customer wants to return to your site.
      #
      # @param use_case [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase] The use case for which the link will be used.
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
