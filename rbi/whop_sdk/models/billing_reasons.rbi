# typed: strong

module WhopSDK
  module Models
    # The reason why a specific payment was billed
    module BillingReasons
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::BillingReasons) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUBSCRIPTION_CREATE =
        T.let(:subscription_create, WhopSDK::BillingReasons::TaggedSymbol)
      SUBSCRIPTION_CYCLE =
        T.let(:subscription_cycle, WhopSDK::BillingReasons::TaggedSymbol)
      SUBSCRIPTION_UPDATE =
        T.let(:subscription_update, WhopSDK::BillingReasons::TaggedSymbol)
      ONE_TIME = T.let(:one_time, WhopSDK::BillingReasons::TaggedSymbol)
      MANUAL = T.let(:manual, WhopSDK::BillingReasons::TaggedSymbol)
      SUBSCRIPTION = T.let(:subscription, WhopSDK::BillingReasons::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::BillingReasons::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
