# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentQuoteLineItem < Internal::Types::Model
      field :discount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :plan_id, -> { String }, optional: false, nullable: true

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :tax_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
