# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputePayment < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: true

      field :card_brand, -> { String }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :payment_instrument, -> { Whop_sdk::Types::PaymentInstrument }, optional: false, nullable: true

      field :payment_method_type, -> { String }, optional: false, nullable: true

      field :payment_processor, -> { String }, optional: false, nullable: true
    end
  end
end
