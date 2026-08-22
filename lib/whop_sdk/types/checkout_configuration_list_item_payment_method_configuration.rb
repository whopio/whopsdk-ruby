# frozen_string_literal: true

module Whop_sdk
  module Types
    # The explicit payment method configuration for the session, if any. This currently only works in 'setup' mode. Use
    # the plan's payment_method_configuration for payment method.
    class CheckoutConfigurationListItemPaymentMethodConfiguration < Internal::Types::Model
      field :disabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

      field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
