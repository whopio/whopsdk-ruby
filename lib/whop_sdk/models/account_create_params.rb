# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#create
    class AccountCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute email
      #   The email address of the account owner. Required for business account API key
      #   requests.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute metadata
      #   Arbitrary key/value metadata to store on the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!method initialize(email: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountCreateParams} for more details.
      #
      #   @param email [String] The email address of the account owner. Required for business account API key re
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
