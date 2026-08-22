# frozen_string_literal: true

module Whop_sdk
  module Types
    # The credit-card-proportioned tile (48x30).
    class PaymentMethodListItemCashappPaymentMethodIconsCard < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentMethodListItemCashappPaymentMethodIconsCardDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentMethodListItemCashappPaymentMethodIconsCardLight }, optional: false, nullable: false
    end
  end
end
