# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutConfigurationPlan < Internal::Types::Model
      field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :currency, -> { String }, optional: false, nullable: false

      field :expiration_days, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Integer }, optional: false, nullable: false

      field :plan_type, -> { Whop_sdk::Types::CheckoutConfigurationPlanPlanType }, optional: false, nullable: false

      field :release_method, -> { Whop_sdk::Types::CheckoutConfigurationPlanReleaseMethod }, optional: false, nullable: false

      field :renewal_price, -> { Integer }, optional: false, nullable: false

      field :three_ds_level, -> { Whop_sdk::Types::CheckoutConfigurationPlanThreeDsLevel }, optional: false, nullable: true

      field :trial_period_days, -> { Integer }, optional: false, nullable: true

      field :visibility, -> { Whop_sdk::Types::CheckoutConfigurationPlanVisibility }, optional: false, nullable: false
    end
  end
end
