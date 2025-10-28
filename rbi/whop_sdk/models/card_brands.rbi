# typed: strong

module WhopSDK
  module Models
    # Possible card brands that a payment token can have
    module CardBrands
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CardBrands) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MASTERCARD = T.let(:mastercard, WhopSDK::CardBrands::TaggedSymbol)
      VISA = T.let(:visa, WhopSDK::CardBrands::TaggedSymbol)
      AMEX = T.let(:amex, WhopSDK::CardBrands::TaggedSymbol)
      DISCOVER = T.let(:discover, WhopSDK::CardBrands::TaggedSymbol)
      UNIONPAY = T.let(:unionpay, WhopSDK::CardBrands::TaggedSymbol)
      JCB = T.let(:jcb, WhopSDK::CardBrands::TaggedSymbol)
      DINERS = T.let(:diners, WhopSDK::CardBrands::TaggedSymbol)
      LINK = T.let(:link, WhopSDK::CardBrands::TaggedSymbol)
      TROY = T.let(:troy, WhopSDK::CardBrands::TaggedSymbol)
      VISADANKORT = T.let(:visadankort, WhopSDK::CardBrands::TaggedSymbol)
      VISABANCONTACT = T.let(:visabancontact, WhopSDK::CardBrands::TaggedSymbol)
      CHINA_UNION_PAY =
        T.let(:china_union_pay, WhopSDK::CardBrands::TaggedSymbol)
      RUPAY = T.let(:rupay, WhopSDK::CardBrands::TaggedSymbol)
      JCBRUPAY = T.let(:jcbrupay, WhopSDK::CardBrands::TaggedSymbol)
      ELO = T.let(:elo, WhopSDK::CardBrands::TaggedSymbol)
      UNKNOWN = T.let(:unknown, WhopSDK::CardBrands::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CardBrands::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
