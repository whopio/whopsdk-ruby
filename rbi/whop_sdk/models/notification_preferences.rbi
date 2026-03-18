# typed: strong

module WhopSDK
  module Models
    # The notification preference for an AI chat
    module NotificationPreferences
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::NotificationPreferences) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ALL = T.let(:all, WhopSDK::NotificationPreferences::TaggedSymbol)
      NONE = T.let(:none, WhopSDK::NotificationPreferences::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::NotificationPreferences::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
