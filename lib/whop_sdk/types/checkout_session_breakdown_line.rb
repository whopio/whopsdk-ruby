# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownLine < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :kind, -> { Whop_sdk::Types::CheckoutSessionBreakdownLineKind }, optional: false, nullable: false

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :unit_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
