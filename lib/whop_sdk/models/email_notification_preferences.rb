# frozen_string_literal: true

module WhopSDK
  module Models
    # Email notification preference option for a forum feed
    module EmailNotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      ALL_ADMIN_POSTS = :all_admin_posts
      ONLY_WEEKLY_SUMMARY = :only_weekly_summary
      NONE = :none

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
