# frozen_string_literal: true

module Whop_sdk
  module Types
    # Every rendition of the icon to display this payment method with. A saved card carries its brand's icon (Visa,
    # Mastercard, ...) rather than the generic card art.
    class PaymentMethodListItemIdealPaymentMethodIcons < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentMethodListItemIdealPaymentMethodIconsCard }, optional: false, nullable: false

      field :square, -> { Whop_sdk::Types::PaymentMethodListItemIdealPaymentMethodIconsSquare }, optional: false, nullable: false
    end
  end
end
