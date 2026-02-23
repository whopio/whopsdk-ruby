# typed: strong

module WhopSDK
  module Models
    # The different payment providers.
    module PaymentProvider
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PaymentProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STRIPE = T.let(:stripe, WhopSDK::PaymentProvider::TaggedSymbol)
      COINBASE = T.let(:coinbase, WhopSDK::PaymentProvider::TaggedSymbol)
      PAYPAL = T.let(:paypal, WhopSDK::PaymentProvider::TaggedSymbol)
      APPLE = T.let(:apple, WhopSDK::PaymentProvider::TaggedSymbol)
      SEZZLE = T.let(:sezzle, WhopSDK::PaymentProvider::TaggedSymbol)
      SPLITIT = T.let(:splitit, WhopSDK::PaymentProvider::TaggedSymbol)
      PLATFORM_BALANCE =
        T.let(:platform_balance, WhopSDK::PaymentProvider::TaggedSymbol)
      MULTI_PSP = T.let(:multi_psp, WhopSDK::PaymentProvider::TaggedSymbol)
      ADYEN = T.let(:adyen, WhopSDK::PaymentProvider::TaggedSymbol)
      CLARITYPAY = T.let(:claritypay, WhopSDK::PaymentProvider::TaggedSymbol)
      CHECKOUT_DOT_COM =
        T.let(:checkout_dot_com, WhopSDK::PaymentProvider::TaggedSymbol)
      AIRWALLEX = T.let(:airwallex, WhopSDK::PaymentProvider::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::PaymentProvider::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
