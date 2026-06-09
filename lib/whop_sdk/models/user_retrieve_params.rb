# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class UserRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   When set, returns the user's account-specific profile overrides for this
      #   account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!method initialize(id:, account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param account_id [String] When set, returns the user's account-specific profile overrides for this account
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
