# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#create
    class SocialAccountCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute platform
      #   The platform to create the social account on.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccountCreateParams::Platform]
      required :platform, enum: -> { WhopSDK::SocialAccountCreateParams::Platform }

      # @!attribute account_id
      #   The Account (biz\_ identifier) to create the social account for. An
      #   account-scoped API key may omit this to default to its own account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!method initialize(platform:, account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccountCreateParams} for more details.
      #
      #   @param platform [Symbol, WhopSDK::Models::SocialAccountCreateParams::Platform] The platform to create the social account on.
      #
      #   @param account_id [String] The Account (biz\_ identifier) to create the social account for. An
      #   account-scope
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The platform to create the social account on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        FACEBOOK = :facebook

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
