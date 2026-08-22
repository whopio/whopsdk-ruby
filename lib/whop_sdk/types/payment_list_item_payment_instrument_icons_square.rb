# frozen_string_literal: true

module Whop_sdk
  module Types
    # The square tile (32x32).
    class PaymentListItemPaymentInstrumentIconsSquare < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentListItemPaymentInstrumentIconsSquareDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentListItemPaymentInstrumentIconsSquareLight }, optional: false, nullable: false
    end
  end
end
