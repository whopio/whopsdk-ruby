# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved payment method with no type-specific details available.
    class PaymentMethodBasePaymentMethod < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodBasePaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
