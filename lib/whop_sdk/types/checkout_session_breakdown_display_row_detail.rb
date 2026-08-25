# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownDisplayRowDetail < Internal::Types::Model
      field :access_days, -> { Integer }, optional: true, nullable: false

      field :access_until, -> { String }, optional: true, nullable: false

      field :applied, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayRowDetailApplied }, optional: true, nullable: false

      field :charge_at, -> { String }, optional: true, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :initial_fee, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :interval_days, -> { Integer }, optional: true, nullable: false

      field :invoice, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :paid_trial, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :rate, -> { String }, optional: true, nullable: false

      field :remaining_payments, -> { Integer }, optional: true, nullable: false

      field :total_payments, -> { Integer }, optional: true, nullable: false

      field :trial_days, -> { Integer }, optional: true, nullable: false

      field :without_tax, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
