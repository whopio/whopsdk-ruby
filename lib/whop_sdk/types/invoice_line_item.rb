# frozen_string_literal: true

module Whop_sdk
  module Types
    class InvoiceLineItem < Internal::Types::Model
      field :discount_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :tax_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :unit_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :variant_id, -> { String }, optional: false, nullable: true
    end
  end
end
