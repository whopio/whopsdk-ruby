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
      CHECKOUT_DOT_COM = :checkout_dot_com
      AIRWALLEX = :airwallex

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
