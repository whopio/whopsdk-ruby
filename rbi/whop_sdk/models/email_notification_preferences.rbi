# typed: strong

module WhopSDK
  module Models
    # Email notification preference option for a forum feed
    module EmailNotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::EmailNotificationPreferences) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ALL_ADMIN_POSTS =
        T.let(
          :all_admin_posts,
          WhopSDK::EmailNotificationPreferences::TaggedSymbol
        )
      ONLY_WEEKLY_SUMMARY =
        T.let(
          :only_weekly_summary,
          WhopSDK::EmailNotificationPreferences::TaggedSymbol
        )
      NONE = T.let(:none, WhopSDK::EmailNotificationPreferences::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::EmailNotificationPreferences::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
