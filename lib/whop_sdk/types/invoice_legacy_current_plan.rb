# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan that this invoice charges for.
    class InvoiceLegacyCurrentPlan < Internal::Types::Model
      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :formatted_price, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Integer }, optional: false, nullable: false

      field :plan_type, -> { Whop_sdk::Types::PlanTypes }, optional: false, nullable: false

      field :renewal_price, -> { Integer }, optional: false, nullable: false

      field :trial_period_days, -> { Integer }, optional: false, nullable: true
    end
  end
end
