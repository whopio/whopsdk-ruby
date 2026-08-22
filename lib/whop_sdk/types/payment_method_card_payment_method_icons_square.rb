# frozen_string_literal: true

module Whop_sdk
  module Types
    # The square tile (32x32).
    class PaymentMethodCardPaymentMethodIconsSquare < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentMethodCardPaymentMethodIconsSquareDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentMethodCardPaymentMethodIconsSquareLight }, optional: false, nullable: false
    end
  end
end
