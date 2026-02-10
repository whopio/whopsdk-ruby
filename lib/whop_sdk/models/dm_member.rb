# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#create
    class DmMember < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_id
      #   The unique identifier of the messaging channel this membership belongs to.
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute last_viewed_at
      #   The timestamp when this member last viewed the channel, as a Unix timestamp in
      #   milliseconds. Null if the member has never viewed the channel.
      #
      #   @return [String, nil]
      required :last_viewed_at, String, nil?: true

      # @!attribute notification_preference
      #   The notification level for this channel: all, mentions, or none.
      #
      #   @return [Symbol, WhopSDK::Models::DmFeedMemberNotificationPreferences]
      required :notification_preference, enum: -> { WhopSDK::DmFeedMemberNotificationPreferences }

      # @!attribute status
      #   The current state of this membership: requested, accepted, hidden, closed, or
      #   archived.
      #
      #   @return [Symbol, WhopSDK::Models::DmFeedMemberStatuses]
      required :status, enum: -> { WhopSDK::DmFeedMemberStatuses }

      # @!attribute user_id
      #   The unique identifier of the user who holds this channel membership.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(id:, channel_id:, last_viewed_at:, notification_preference:, status:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmMember} for more details.
      #
      #   A user's membership record in a messaging channel, including notification
      #   preferences and read state.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param channel_id [String] The unique identifier of the messaging channel this membership belongs to.
      #
      #   @param last_viewed_at [String, nil] The timestamp when this member last viewed the channel, as a Unix timestamp in m
      #
      #   @param notification_preference [Symbol, WhopSDK::Models::DmFeedMemberNotificationPreferences] The notification level for this channel: all, mentions, or none.
      #
      #   @param status [Symbol, WhopSDK::Models::DmFeedMemberStatuses] The current state of this membership: requested, accepted, hidden, closed, or ar
      #
      #   @param user_id [String] The unique identifier of the user who holds this channel membership.
    end
  end
end
