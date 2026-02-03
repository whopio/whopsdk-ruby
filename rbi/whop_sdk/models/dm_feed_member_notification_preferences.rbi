# typed: strong

module WhopSDK
  module Models
    # The notification preferences for a DMs feed member
    module DmFeedMemberNotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, WhopSDK::DmFeedMemberNotificationPreferences)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ALL =
        T.let(:all, WhopSDK::DmFeedMemberNotificationPreferences::TaggedSymbol)
      MENTIONS =
        T.let(
          :mentions,
          WhopSDK::DmFeedMemberNotificationPreferences::TaggedSymbol
        )
      NONE =
        T.let(:none, WhopSDK::DmFeedMemberNotificationPreferences::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::DmFeedMemberNotificationPreferences::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
