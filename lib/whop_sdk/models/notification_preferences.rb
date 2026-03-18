# frozen_string_literal: true

module WhopSDK
  module Models
    # The notification preference for an AI chat
    module NotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      ALL = :all
      NONE = :none

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
