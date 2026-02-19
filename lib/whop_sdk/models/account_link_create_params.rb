# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccountLinks#create
    class AccountLinkCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to generate the link for, starting with
      #   'biz\_'. Must be a sub-merchant of the API key's company.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute refresh_url
      #   The URL to redirect the user to if the session expires and needs to be
      #   re-authenticated, such as 'https://example.com/refresh'.
      #
      #   @return [String]
      required :refresh_url, String

      # @!attribute return_url
      #   The URL to redirect the user to when they want to return to your site, such as
      #   'https://example.com/return'.
      #
      #   @return [String]
      required :return_url, String

      # @!attribute use_case
      #   The purpose of the account link, such as hosted payouts portal or hosted KYC
      #   onboarding.
      #
      #   @return [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase]
      required :use_case, enum: -> { WhopSDK::AccountLinkCreateParams::UseCase }

      # @!method initialize(company_id:, refresh_url:, return_url:, use_case:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountLinkCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to generate the link for, starting with 'bi
      #
      #   @param refresh_url [String] The URL to redirect the user to if the session expires and needs to be re-authen
      #
      #   @param return_url [String] The URL to redirect the user to when they want to return to your site, such as '
      #
      #   @param use_case [Symbol, WhopSDK::Models::AccountLinkCreateParams::UseCase] The purpose of the account link, such as hosted payouts portal or hosted KYC onb
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The purpose of the account link, such as hosted payouts portal or hosted KYC
      # onboarding.
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
