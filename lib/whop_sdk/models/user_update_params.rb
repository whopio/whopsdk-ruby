# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#update
    class UserUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account whose profile override to update. Required for API key callers.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute bio
      #
      #   @return [String, nil]
      optional :bio, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, account_id: nil, bio: nil, name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param account_id [String] The account whose profile override to update. Required for API key callers.
      #
      #   @param bio [String]
      #
      #   @param name [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
