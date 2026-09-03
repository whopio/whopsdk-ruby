# frozen_string_literal: true

module Whop_sdk
  module Types
    # The standard icon set: square and card shapes, each in light and dark colorways.
    class DisputeLegacyPaymentPaymentInstrumentIcons < Internal::Types::Model
      field :square, -> { Whop_sdk::Types::DisputeLegacyPaymentPaymentInstrumentIconsSquare }, optional: false, nullable: false
    end
  end
end
