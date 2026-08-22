# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Pass this object to create a new plan for this payment
      class CreatePaymentsRequestOnePlan < Internal::Types::Model
        field :application_fee_amount, -> { Integer }, optional: true, nullable: false

        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expiration_days, -> { Integer }, optional: true, nullable: false

        field :force_create_new_plan, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :internal_notes, -> { String }, optional: true, nullable: false

        field :plan_type, -> { Whop_sdk::Types::PlanTypes }, optional: true, nullable: false

        field :product, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestOnePlanProduct }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :trial_period_days, -> { Integer }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Types::Visibility }, optional: true, nullable: false
      end
    end
  end
end
