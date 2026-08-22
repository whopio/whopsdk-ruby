# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved SEPA Direct Debit payment method, including the bank code, country, and last four IBAN digits.
    class PaymentMethodListItemSepaDebitPaymentMethod < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodListItemSepaDebitPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false

      field :sepa_debit, -> { Whop_sdk::Types::PaymentMethodListItemSepaDebitPaymentMethodSepaDebit }, optional: false, nullable: false
    end
  end
end
