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
      MAESTRO = T.let(:maestro, WhopSDK::CardBrands::TaggedSymbol)
      TARJETA_NARANJA =
        T.let(:tarjeta_naranja, WhopSDK::CardBrands::TaggedSymbol)
      CIRRUS = T.let(:cirrus, WhopSDK::CardBrands::TaggedSymbol)
      NSPK_MIR = T.let(:nspk_mir, WhopSDK::CardBrands::TaggedSymbol)
      VERVE = T.let(:verve, WhopSDK::CardBrands::TaggedSymbol)
      EBT = T.let(:ebt, WhopSDK::CardBrands::TaggedSymbol)
      PRIVATE_LABEL = T.let(:private_label, WhopSDK::CardBrands::TaggedSymbol)
      LOCAL_BRAND = T.let(:local_brand, WhopSDK::CardBrands::TaggedSymbol)
      UATP = T.let(:uatp, WhopSDK::CardBrands::TaggedSymbol)
      WEXCARD = T.let(:wexcard, WhopSDK::CardBrands::TaggedSymbol)
      UZCARD = T.let(:uzcard, WhopSDK::CardBrands::TaggedSymbol)
      MEEZA = T.let(:meeza, WhopSDK::CardBrands::TaggedSymbol)
      HRG_STORE_CARD = T.let(:hrg_store_card, WhopSDK::CardBrands::TaggedSymbol)
      GIROCARD = T.let(:girocard, WhopSDK::CardBrands::TaggedSymbol)
      FUEL_CARD = T.let(:fuel_card, WhopSDK::CardBrands::TaggedSymbol)
      DANKORT = T.let(:dankort, WhopSDK::CardBrands::TaggedSymbol)
      CARNET = T.let(:carnet, WhopSDK::CardBrands::TaggedSymbol)
      ATM_CARD = T.let(:atm_card, WhopSDK::CardBrands::TaggedSymbol)
      CHINA_UNION_PAYUZCARD =
        T.let(:china_union_payuzcard, WhopSDK::CardBrands::TaggedSymbol)
      UNKNOWN = T.let(:unknown, WhopSDK::CardBrands::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CardBrands::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
