# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownAdjustment < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :applied, -> { Whop_sdk::Types::CheckoutSessionBreakdownAdjustmentApplied }, optional: false, nullable: false

      field :kind, -> { Whop_sdk::Types::CheckoutSessionBreakdownAdjustmentKind }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :rate, -> { String }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::CheckoutSessionBreakdownAdjustmentStatus }, optional: true, nullable: false
    end
  end
end
