# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      # Plan attributes used to create or find a plan for this checkout configuration. Mutually exclusive with
      # `plan_id`.
      class CreateCheckoutConfigurationsRequestPlan < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expiration_days, -> { Integer }, optional: true, nullable: false

        field :force_create_new_plan, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :override_tax_type, -> { String }, optional: true, nullable: false

        field :payment_method_configuration, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlanPaymentMethodConfiguration }, optional: true, nullable: false

        field :plan_type, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlanPlanType }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :release_method, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlanReleaseMethod }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :stock, -> { Integer }, optional: true, nullable: false

        field :three_ds_level, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlanThreeDsLevel }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :trial_period_days, -> { Integer }, optional: true, nullable: false

        field :unlimited_stock, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlanVisibility }, optional: true, nullable: false
      end
    end
  end
end
