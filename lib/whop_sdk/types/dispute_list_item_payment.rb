# frozen_string_literal: true

module Whop_sdk
  module Types
    # The original payment that was disputed.
    class DisputeListItemPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :payment_instrument, -> { Whop_sdk::Types::DisputeListItemPaymentPaymentInstrument }, optional: false, nullable: true
    end
  end
end
