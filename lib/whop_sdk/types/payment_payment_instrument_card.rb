# frozen_string_literal: true

module Whop_sdk
  module Types
    # Card payments only: the card's network and last four.
    class PaymentPaymentInstrumentCard < Internal::Types::Model
      field :brand, -> { String }, optional: false, nullable: false

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
