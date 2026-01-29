# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#create
    class DmMemberCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute channel_id
      #   The ID of the DM channel to add the member to
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute user_id
      #   The ID of the user to add to the channel
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(channel_id:, user_id:, request_options: {})
      #   @param channel_id [String] The ID of the DM channel to add the member to
      #
      #   @param user_id [String] The ID of the user to add to the channel
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
