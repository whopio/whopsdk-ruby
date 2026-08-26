# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethod < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :typename

      member -> { Whop_sdk::Types::PaymentMethodBasePaymentMethod }, key: "BASE_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodCardPaymentMethod }, key: "CARD_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodUsBankAccountPaymentMethod }, key: "US_BANK_ACCOUNT_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodCashappPaymentMethod }, key: "CASHAPP_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodIdealPaymentMethod }, key: "IDEAL_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodSepaDebitPaymentMethod }, key: "SEPA_DEBIT_PAYMENT_METHOD"
    end
  end
end
