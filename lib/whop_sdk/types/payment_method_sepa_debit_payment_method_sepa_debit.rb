# frozen_string_literal: true

module Whop_sdk
  module Types
    # The SEPA Direct Debit-specific details for this payment method, including bank code and last four IBAN digits.
    class PaymentMethodSepaDebitPaymentMethodSepaDebit < Internal::Types::Model
      field :bank_code, -> { String }, optional: false, nullable: true

      field :branch_code, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
