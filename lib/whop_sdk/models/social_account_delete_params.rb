# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#delete
    class SocialAccountDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The Account that the social account is connected to. Provide either this or
      #   user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute user_id
      #   The User that the social account is connected to. Provide either this or
      #   account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(id:, account_id: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccountDeleteParams} for more details.
      #
      #   @param id [String]
      #
      #   @param account_id [String] The Account that the social account is connected to. Provide either this or user
      #
      #   @param user_id [String] The User that the social account is connected to. Provide either this or account
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
