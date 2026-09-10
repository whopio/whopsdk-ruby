# frozen_string_literal: true

module Whop_sdk
  module Types
    class ReceiptLineItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: true

      field :plan_id, -> { String }, optional: false, nullable: true

      field :plan_title, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :product_title, -> { String }, optional: false, nullable: true

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
