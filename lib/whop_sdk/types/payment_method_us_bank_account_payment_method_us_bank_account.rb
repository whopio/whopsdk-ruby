# frozen_string_literal: true

module Whop_sdk
  module Types
    # The bank account-specific details for this payment method, including bank name and last four digits.
    class PaymentMethodUsBankAccountPaymentMethodUsBankAccount < Internal::Types::Model
      field :account_type, -> { String }, optional: false, nullable: true

      field :bank_name, -> { String }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
