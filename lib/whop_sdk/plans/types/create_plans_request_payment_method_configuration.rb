# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      # Explicit payment method configuration for the plan. When not provided, the account's defaults apply.
      class CreatePlansRequestPaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
