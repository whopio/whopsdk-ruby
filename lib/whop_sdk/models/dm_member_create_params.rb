# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#create
    class DmMemberCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute channel_id
      #   The unique identifier of the DM channel to add the new member to.
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute user_id
      #   The unique identifier of the user to add to the DM channel. For example,
      #   'user_xxxxx'.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(channel_id:, user_id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmMemberCreateParams} for more details.
      #
      #   @param channel_id [String] The unique identifier of the DM channel to add the new member to.
      #
      #   @param user_id [String] The unique identifier of the user to add to the DM channel. For example, 'user_x
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
