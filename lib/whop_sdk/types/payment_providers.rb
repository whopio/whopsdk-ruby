# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentProviders
      extend Whop_sdk::Internal::Types::Enum

      STRIPE = "stripe"
      COINBASE = "coinbase"
      PAYPAL = "paypal"
      APPLE = "apple"
      SEZZLE = "sezzle"
      SPLITIT = "splitit"
      PLATFORM_BALANCE = "platform_balance"
      MULTI_PSP = "multi_psp"
      ADYEN = "adyen"
      CLARITYPAY = "claritypay"
      FLEX_PAY = "flex_pay"
      CHECKOUT_DOT_COM = "checkout_dot_com"
      AIRWALLEX = "airwallex"
      COINFLOW = "coinflow"
      SEQURA = "sequra"
      DLOCAL = "dlocal"
      MASSPAY = "masspay"
      BRAINTREE = "braintree"
    end
  end
end
