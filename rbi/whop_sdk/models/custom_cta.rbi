# typed: strong

module WhopSDK
  module Models
    # The different types of custom CTAs that can be selected.
    module CustomCta
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CustomCta) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GET_ACCESS = T.let(:get_access, WhopSDK::CustomCta::TaggedSymbol)
      JOIN = T.let(:join, WhopSDK::CustomCta::TaggedSymbol)
      ORDER_NOW = T.let(:order_now, WhopSDK::CustomCta::TaggedSymbol)
      SHOP_NOW = T.let(:shop_now, WhopSDK::CustomCta::TaggedSymbol)
      CALL_NOW = T.let(:call_now, WhopSDK::CustomCta::TaggedSymbol)
      DONATE_NOW = T.let(:donate_now, WhopSDK::CustomCta::TaggedSymbol)
      CONTACT_US = T.let(:contact_us, WhopSDK::CustomCta::TaggedSymbol)
      SIGN_UP = T.let(:sign_up, WhopSDK::CustomCta::TaggedSymbol)
      SUBSCRIBE = T.let(:subscribe, WhopSDK::CustomCta::TaggedSymbol)
      PURCHASE = T.let(:purchase, WhopSDK::CustomCta::TaggedSymbol)
      GET_OFFER = T.let(:get_offer, WhopSDK::CustomCta::TaggedSymbol)
      APPLY_NOW = T.let(:apply_now, WhopSDK::CustomCta::TaggedSymbol)
      COMPLETE_ORDER = T.let(:complete_order, WhopSDK::CustomCta::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CustomCta::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
