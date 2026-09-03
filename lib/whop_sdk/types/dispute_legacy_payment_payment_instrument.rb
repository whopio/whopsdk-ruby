# frozen_string_literal: true

module Whop_sdk
  module Types
    # The instrument this payment was made with, shaped for display: the method type, a buyer-facing name, the standard
    # icon set, and the card facts when it was a card. Null when the receipt names no payment method.
    class DisputeLegacyPaymentPaymentInstrument < Internal::Types::Model
      field :display_name, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::DisputeLegacyPaymentPaymentInstrumentIcons }, optional: false, nullable: false

      field :installment_count, -> { Integer }, optional: false, nullable: true

      field :payment_method_type, -> { String }, optional: false, nullable: false
    end
  end
end
