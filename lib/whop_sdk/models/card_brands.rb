# frozen_string_literal: true

module WhopSDK
  module Models
    # Possible card brands that a payment token can have
    module CardBrands
      extend WhopSDK::Internal::Type::Enum

      MASTERCARD = :mastercard
      VISA = :visa
      AMEX = :amex
      DISCOVER = :discover
      UNIONPAY = :unionpay
      JCB = :jcb
      DINERS = :diners
      LINK = :link
      TROY = :troy
      VISADANKORT = :visadankort
      VISABANCONTACT = :visabancontact
      CHINA_UNION_PAY = :china_union_pay
      RUPAY = :rupay
      JCBRUPAY = :jcbrupay
      ELO = :elo
      MAESTRO = :maestro
      TARJETA_NARANJA = :tarjeta_naranja
      CIRRUS = :cirrus
      NSPK_MIR = :nspk_mir
      VERVE = :verve
      EBT = :ebt
      PRIVATE_LABEL = :private_label
      LOCAL_BRAND = :local_brand
      UATP = :uatp
      WEXCARD = :wexcard
      UZCARD = :uzcard
      MEEZA = :meeza
      HRG_STORE_CARD = :hrg_store_card
      GIROCARD = :girocard
      FUEL_CARD = :fuel_card
      DANKORT = :dankort
      CARNET = :carnet
      ATM_CARD = :atm_card
      CHINA_UNION_PAYUZCARD = :china_union_payuzcard
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
