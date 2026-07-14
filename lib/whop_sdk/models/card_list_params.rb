# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#list
    class CardListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute user_id
      #   The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(account_id: nil, user_id: nil, request_options: {})
      #   @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      #   @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
