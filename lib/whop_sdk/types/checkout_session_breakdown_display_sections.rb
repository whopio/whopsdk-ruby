# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownDisplaySections < Internal::Types::Model
      field :charges, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownDisplayRow] }, optional: false, nullable: false

      field :fee_breakdown, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownDisplayRow] }, optional: false, nullable: false

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownDisplayRow] }, optional: false, nullable: false

      field :totals, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownDisplayRow] }, optional: false, nullable: false
    end
  end
end
