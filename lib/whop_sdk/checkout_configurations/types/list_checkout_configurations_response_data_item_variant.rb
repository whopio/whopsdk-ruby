# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      # Variant used for payment checkout. `null` in setup mode.
      class ListCheckoutConfigurationsResponseDataItemVariant < Internal::Types::Model
        field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :billing_period, -> { Integer }, optional: false, nullable: true

        field :billing_type, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponseDataItemVariantBillingType }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :expiration_days, -> { Integer }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :initial_price, -> { Integer }, optional: false, nullable: false

        field :release_method, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponseDataItemVariantReleaseMethod }, optional: false, nullable: false

        field :renewal_price, -> { Integer }, optional: false, nullable: false

        field :three_ds_level, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponseDataItemVariantThreeDsLevel }, optional: false, nullable: true

        field :trial_period_days, -> { Integer }, optional: false, nullable: true

        field :visibility, -> { Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponseDataItemVariantVisibility }, optional: false, nullable: false
      end
    end
  end
end
