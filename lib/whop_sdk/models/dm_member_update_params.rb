# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#update
    class DmMemberUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute notification_preference
      #   The notification preferences for a DMs feed member
      #
      #   @return [Symbol, WhopSDK::Models::DmFeedMemberNotificationPreferences, nil]
      optional :notification_preference, enum: -> { WhopSDK::DmFeedMemberNotificationPreferences }, nil?: true

      # @!attribute status
      #   The statuses of a DMs feed member
      #
      #   @return [Symbol, WhopSDK::Models::DmFeedMemberStatuses, nil]
      optional :status, enum: -> { WhopSDK::DmFeedMemberStatuses }, nil?: true

      # @!method initialize(id:, notification_preference: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param notification_preference [Symbol, WhopSDK::Models::DmFeedMemberNotificationPreferences, nil] The notification preferences for a DMs feed member
      #
      #   @param status [Symbol, WhopSDK::Models::DmFeedMemberStatuses, nil] The statuses of a DMs feed member
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
