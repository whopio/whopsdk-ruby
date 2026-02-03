# frozen_string_literal: true

module WhopSDK
  module Models
    # The notification preferences for a DMs feed member
    module DmFeedMemberNotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      ALL = :all
      MENTIONS = :mentions
      NONE = :none

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
