# frozen_string_literal: true

module Whop_sdk
  module Types
    # The credit-card-proportioned tile (48x30).
    class PaymentListItemPaymentInstrumentIconsCard < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentListItemPaymentInstrumentIconsCardDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentListItemPaymentInstrumentIconsCardLight }, optional: false, nullable: false
    end
  end
end
