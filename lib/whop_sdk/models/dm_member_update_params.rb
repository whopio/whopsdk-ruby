# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmMembers#update
    class DmMemberUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute notification_preference
      #   The notification preferences for a DMs feed member
      #
      #   @return [Symbol, WhopSDK::Models::DmMemberUpdateParams::NotificationPreference, nil]
      optional :notification_preference,
               enum: -> { WhopSDK::DmMemberUpdateParams::NotificationPreference },
               nil?: true

      # @!attribute status
      #   The statuses of a DMs feed member
      #
      #   @return [Symbol, WhopSDK::Models::DmMemberUpdateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::DmMemberUpdateParams::Status }, nil?: true

      # @!method initialize(notification_preference: nil, status: nil, request_options: {})
      #   @param notification_preference [Symbol, WhopSDK::Models::DmMemberUpdateParams::NotificationPreference, nil] The notification preferences for a DMs feed member
      #
      #   @param status [Symbol, WhopSDK::Models::DmMemberUpdateParams::Status, nil] The statuses of a DMs feed member
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The notification preferences for a DMs feed member
      module NotificationPreference
        extend WhopSDK::Internal::Type::Enum

        ALL = :all
        MENTIONS = :mentions
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The statuses of a DMs feed member
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
