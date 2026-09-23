# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      # Explicit payment method configuration for the plan. When not provided, the account's defaults apply. Send at
      # least one of `enabled` or `disabled`; an omitted one is empty.
      class UpdatePlansRequestPaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: true, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
