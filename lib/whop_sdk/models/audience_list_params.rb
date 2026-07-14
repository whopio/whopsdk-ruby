# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Audiences#list
    class AudienceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute after
      #   Cursor for the next page of audiences.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute audience_id
      #   Audience ID, prefixed `adaud_`, used to filter the response to one audience.
      #
      #   @return [String, nil]
      optional :audience_id, String

      # @!attribute first
      #   Number of audiences to return. Defaults to 20; maximum 100.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!method initialize(account_id:, after: nil, audience_id: nil, first: nil, request_options: {})
      #   @param account_id [String] Account ID, prefixed `biz_`.
      #
      #   @param after [String] Cursor for the next page of audiences.
      #
      #   @param audience_id [String] Audience ID, prefixed `adaud_`, used to filter the response to one audience.
      #
      #   @param first [Integer] Number of audiences to return. Defaults to 20; maximum 100.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
