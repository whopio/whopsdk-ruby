# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved Cash App payment method, including the buyer's cashtag and unique identifier.
    class PaymentMethodListItemCashappPaymentMethod < Internal::Types::Model
      field :cashapp, -> { Whop_sdk::Types::PaymentMethodListItemCashappPaymentMethodCashapp }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodListItemCashappPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
