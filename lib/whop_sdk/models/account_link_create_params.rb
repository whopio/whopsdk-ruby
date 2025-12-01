# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccountLinks#create
    class AccountLinkCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the Company to generate the url for. The company must be a
      #   sub-merchant of the API key's company.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute refresh_url
      #   The URL to redirect to if the session expires and needs to be re-authenticated
      #   due to the token expiring.
      #
      #   @return [String]
      required :refresh_url, String

      # @!attribute return_url
      #   The URL to redirect to when the customer wants to return to your site.
      #
      #   @return [String]
      required :return_url, String

      # @!attribute use_case
      #   The use case for which the link will be used.
      #
      #   @return [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase]
      required :use_case, enum: -> { WhopSDK::AccountLinkCreateParams::UseCase }

      # @!method initialize(company_id:, refresh_url:, return_url:, use_case:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountLinkCreateParams} for more details.
      #
      #   @param company_id [String] The ID of the Company to generate the url for. The company must be a sub-merchan
      #
      #   @param refresh_url [String] The URL to redirect to if the session expires and needs to be re-authenticated d
      #
      #   @param return_url [String] The URL to redirect to when the customer wants to return to your site.
      #
      #   @param use_case [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase] The use case for which the link will be used.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The use case for which the link will be used.
      module UseCase
        extend WhopSDK::Internal::Type::Enum

        ACCOUNT_ONBOARDING = :account_onboarding
        PAYOUTS_PORTAL = :payouts_portal

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
