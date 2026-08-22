# frozen_string_literal: true

module Whop_sdk
  module Types
    # The credit-card-proportioned tile (48x30).
    class PaymentMethodListItemCardPaymentMethodIconsCard < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentMethodListItemCardPaymentMethodIconsCardDark }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentMethodListItemCardPaymentMethodIconsCardLight }, optional: false, nullable: false
    end
  end
end
