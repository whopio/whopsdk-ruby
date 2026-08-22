# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved Cash App payment method, including the buyer's cashtag and unique identifier.
    class PaymentMethodCashappPaymentMethod < Internal::Types::Model
      field :cashapp, -> { Whop_sdk::Types::PaymentMethodCashappPaymentMethodCashapp }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodCashappPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
