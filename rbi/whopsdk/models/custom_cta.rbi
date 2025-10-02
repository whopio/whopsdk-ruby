# typed: strong

module Whopsdk
  module Models
    # The different types of custom CTAs that can be selected.
    module CustomCta
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::CustomCta) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GET_ACCESS = T.let(:get_access, Whopsdk::CustomCta::TaggedSymbol)
      JOIN = T.let(:join, Whopsdk::CustomCta::TaggedSymbol)
      ORDER_NOW = T.let(:order_now, Whopsdk::CustomCta::TaggedSymbol)
      SHOP_NOW = T.let(:shop_now, Whopsdk::CustomCta::TaggedSymbol)
      CALL_NOW = T.let(:call_now, Whopsdk::CustomCta::TaggedSymbol)
      DONATE_NOW = T.let(:donate_now, Whopsdk::CustomCta::TaggedSymbol)
      CONTACT_US = T.let(:contact_us, Whopsdk::CustomCta::TaggedSymbol)
      SIGN_UP = T.let(:sign_up, Whopsdk::CustomCta::TaggedSymbol)
      SUBSCRIBE = T.let(:subscribe, Whopsdk::CustomCta::TaggedSymbol)
      PURCHASE = T.let(:purchase, Whopsdk::CustomCta::TaggedSymbol)
      GET_OFFER = T.let(:get_offer, Whopsdk::CustomCta::TaggedSymbol)
      APPLY_NOW = T.let(:apply_now, Whopsdk::CustomCta::TaggedSymbol)
      COMPLETE_ORDER = T.let(:complete_order, Whopsdk::CustomCta::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::CustomCta::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
