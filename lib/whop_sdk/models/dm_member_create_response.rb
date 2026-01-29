# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#create
    class DmMemberCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute channel_id
      #   The ID of the DM channel
      #
      #   @return [String]
      required :channel_id, String

      # @!attribute last_viewed_at
      #   Timestamp when the member last viewed the channel (in milliseconds since Unix
      #   epoch)
      #
      #   @return [String, nil]
      required :last_viewed_at, String, nil?: true

      # @!attribute notification_preference
      #   The notification preference for this member (all, mentions, none)
      #
      #   @return [Symbol, WhopSDK::Models::DmMemberCreateResponse::NotificationPreference]
      required :notification_preference,
               enum: -> { WhopSDK::Models::DmMemberCreateResponse::NotificationPreference }

      # @!attribute status
      #   The status of the membership (requested, accepted, rejected)
      #
      #   @return [Symbol, WhopSDK::Models::DmMemberCreateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::DmMemberCreateResponse::Status }

      # @!attribute user_id
      #   The ID of the user who is a member of the channel
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(id:, channel_id:, last_viewed_at:, notification_preference:, status:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmMemberCreateResponse} for more details.
      #
      #   Represents a member of a DM channel
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param channel_id [String] The ID of the DM channel
      #
      #   @param last_viewed_at [String, nil] Timestamp when the member last viewed the channel (in milliseconds since Unix ep
      #
      #   @param notification_preference [Symbol, WhopSDK::Models::DmMemberCreateResponse::NotificationPreference] The notification preference for this member (all, mentions, none)
      #
      #   @param status [Symbol, WhopSDK::Models::DmMemberCreateResponse::Status] The status of the membership (requested, accepted, rejected)
      #
      #   @param user_id [String] The ID of the user who is a member of the channel

      # The notification preference for this member (all, mentions, none)
      #
      # @see WhopSDK::Models::DmMemberCreateResponse#notification_preference
      module NotificationPreference
        extend WhopSDK::Internal::Type::Enum

        ALL = :all
        MENTIONS = :mentions
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the membership (requested, accepted, rejected)
      #
      # @see WhopSDK::Models::DmMemberCreateResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        REQUESTED = :requested
        ACCEPTED = :accepted
        HIDDEN = :hidden
        CLOSED = :closed
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
