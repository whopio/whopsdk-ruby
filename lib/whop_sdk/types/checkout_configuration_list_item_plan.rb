# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan to use for the checkout configuration
    class CheckoutConfigurationListItemPlan < Internal::Types::Model
      field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :expiration_days, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :initial_price, -> { Integer }, optional: false, nullable: false

      field :plan_type, -> { Whop_sdk::Types::PlanTypes }, optional: false, nullable: false

      field :release_method, -> { Whop_sdk::Types::ReleaseMethod }, optional: false, nullable: false

      field :renewal_price, -> { Integer }, optional: false, nullable: false

      field :three_ds_level, -> { Whop_sdk::Types::PlanThreeDsLevels }, optional: false, nullable: true

      field :trial_period_days, -> { Integer }, optional: false, nullable: true

      field :visibility, -> { Whop_sdk::Types::Visibility }, optional: false, nullable: false
    end
  end
end
