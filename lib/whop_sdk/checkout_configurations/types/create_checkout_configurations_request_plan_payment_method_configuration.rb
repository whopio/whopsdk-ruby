# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      # Payment method overrides for the inline plan. `null` uses platform defaults.
      class CreateCheckoutConfigurationsRequestPlanPaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
