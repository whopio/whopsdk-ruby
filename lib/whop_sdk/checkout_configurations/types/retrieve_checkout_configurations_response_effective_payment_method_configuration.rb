# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      # The configuration governing a checkout mounted from this configuration, resolved through every layer (its own
      # overrides, the plan's, and the account's) — the shape a session's `payment_method_configuration` carries. Apply
      # it over the payment method types catalogue for the offerable set. `null` means platform defaults;
      # `payment_method_configuration` stays this configuration's own editable override.
      class RetrieveCheckoutConfigurationsResponseEffectivePaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
