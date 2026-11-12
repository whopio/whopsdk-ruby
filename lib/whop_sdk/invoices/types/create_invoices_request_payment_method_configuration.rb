# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # The payment methods the customer can choose from when paying through the invoice's checkout link, in the shape a
      # variant or checkout configuration takes. It takes precedence over the invoice's variants and the account, and
      # changes neither. Send both lists. `null` uses its variants' payment methods. Can be updated on drafts.
      class CreateInvoicesRequestPaymentMethodConfiguration < Internal::Types::Model
        field :disabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodTypes] }, optional: false, nullable: false

        field :include_platform_defaults, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
