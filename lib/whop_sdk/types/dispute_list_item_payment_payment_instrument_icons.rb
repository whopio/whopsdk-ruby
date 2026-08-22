# frozen_string_literal: true

module Whop_sdk
  module Types
    # The standard icon set: square and card shapes, each in light and dark colorways.
    class DisputeListItemPaymentPaymentInstrumentIcons < Internal::Types::Model
      field :square, -> { Whop_sdk::Types::DisputeListItemPaymentPaymentInstrumentIconsSquare }, optional: false, nullable: false
    end
  end
end
