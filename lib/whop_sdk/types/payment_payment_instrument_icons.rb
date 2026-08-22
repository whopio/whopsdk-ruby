# frozen_string_literal: true

module Whop_sdk
  module Types
    # The standard icon set: square and card shapes, each in light and dark colorways.
    class PaymentPaymentInstrumentIcons < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentPaymentInstrumentIconsCard }, optional: false, nullable: false

      field :square, -> { Whop_sdk::Types::PaymentPaymentInstrumentIconsSquare }, optional: false, nullable: false
    end
  end
end
