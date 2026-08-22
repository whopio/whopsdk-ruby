# frozen_string_literal: true

module Whop_sdk
  module Types
    # The credit-card-proportioned tile (48x30).
    class PaymentPaymentInstrumentIconsCard < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentPaymentInstrumentIconsCardDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentPaymentInstrumentIconsCardLight }, optional: false, nullable: false
    end
  end
end
