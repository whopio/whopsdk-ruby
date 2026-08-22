# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      # Payment method overrides for this checkout. `null` when it uses the plan or platform defaults.
      class RetrieveCheckoutConfigurationsResponsePaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
