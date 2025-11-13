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
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
