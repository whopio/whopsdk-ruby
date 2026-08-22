# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # The explicit payment method configuration for the plan. If not provided, the platform or company's defaults will
      # apply.
      class CreateInvoicesRequestProductIDPlanPaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
