# frozen_string_literal: true

module Whop_sdk
  module Types
    # The square tile (32x32).
    class PaymentMethodListItemPlatformBalancePaymentMethodIconsSquare < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentMethodListItemPlatformBalancePaymentMethodIconsSquareDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentMethodListItemPlatformBalancePaymentMethodIconsSquareLight }, optional: false, nullable: false
    end
  end
end
