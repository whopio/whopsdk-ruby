# frozen_string_literal: true

module Whop_sdk
  module Types
    # The tokenized payment method reference used for this payment. Null if no token was used.
    class PaymentLegacyPaymentMethod < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentLegacyPaymentMethodCard }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
