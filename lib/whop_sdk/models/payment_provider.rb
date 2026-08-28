# frozen_string_literal: true

module WhopSDK
  module Models
    # The different payment providers.
    module PaymentProvider
      extend WhopSDK::Internal::Type::Enum

      STRIPE = :stripe
      COINBASE = :coinbase
      PAYPAL = :paypal
      APPLE = :apple
      SEZZLE = :sezzle
      SPLITIT = :splitit
      PLATFORM_BALANCE = :platform_balance
      MULTI_PSP = :multi_psp
      ADYEN = :adyen
      CLARITYPAY = :claritypay
      FLEX_PAY = :flex_pay
      CHECKOUT_DOT_COM = :checkout_dot_com
      AIRWALLEX = :airwallex
      COINFLOW = :coinflow
      SEQURA = :sequra
      DLOCAL = :dlocal
      MASSPAY = :masspay
      BRAINTREE = :braintree

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
