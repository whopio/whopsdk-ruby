# frozen_string_literal: true

module Whop_sdk
  module Types
    # The iDEAL-specific details for this payment method, including bank name and BIC.
    class PaymentMethodListItemIdealPaymentMethodIdeal < Internal::Types::Model
      field :bank, -> { String }, optional: false, nullable: true

      field :bic, -> { String }, optional: false, nullable: true
    end
  end
end
