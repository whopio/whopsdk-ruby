# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved US bank account payment method, including bank name, last four digits, and account type.
    class PaymentMethodListItemUsBankAccountPaymentMethod < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodListItemUsBankAccountPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false

      field :us_bank_account, -> { Whop_sdk::Types::PaymentMethodListItemUsBankAccountPaymentMethodUsBankAccount }, optional: false, nullable: false
    end
  end
end
