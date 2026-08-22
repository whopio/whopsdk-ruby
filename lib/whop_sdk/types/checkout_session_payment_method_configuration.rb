# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionPaymentMethodConfiguration < Internal::Types::Model
      field :disabled, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
