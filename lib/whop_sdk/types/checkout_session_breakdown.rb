# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdown < Internal::Types::Model
      field :adjustments, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownAdjustment] }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::CheckoutSessionBreakdownCurrency }, optional: false, nullable: false

      field :display, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplay }, optional: false, nullable: false

      field :lines, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownLine] }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :upcoming, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownUpcoming] }, optional: false, nullable: false
    end
  end
end
