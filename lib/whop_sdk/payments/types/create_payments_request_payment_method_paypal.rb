# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Options for a `paypal` payment method.
      class CreatePaymentsRequestPaymentMethodPaypal < Internal::Types::Model
        field :request_shipping, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
