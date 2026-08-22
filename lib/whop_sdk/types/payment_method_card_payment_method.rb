# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved card payment method, including brand, last four digits, and expiration details.
    class PaymentMethodCardPaymentMethod < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentMethodCardPaymentMethodCard }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :has_payer_document, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodCardPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
