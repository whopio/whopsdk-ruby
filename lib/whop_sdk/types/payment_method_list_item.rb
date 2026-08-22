# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodListItem < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :typename

      member -> { Whop_sdk::Types::PaymentMethodListItemBasePaymentMethod }, key: "BASE_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemCardPaymentMethod }, key: "CARD_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemUsBankAccountPaymentMethod }, key: "US_BANK_ACCOUNT_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemCashappPaymentMethod }, key: "CASHAPP_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemIdealPaymentMethod }, key: "IDEAL_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemSepaDebitPaymentMethod }, key: "SEPA_DEBIT_PAYMENT_METHOD"

      member -> { Whop_sdk::Types::PaymentMethodListItemPlatformBalancePaymentMethod }, key: "PLATFORM_BALANCE_PAYMENT_METHOD"
    end
  end
end
