# frozen_string_literal: true

module Whop_sdk
  module Types
    # A saved iDEAL payment method, including the customer's bank name and BIC code.
    class PaymentMethodListItemIdealPaymentMethod < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodListItemIdealPaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :ideal, -> { Whop_sdk::Types::PaymentMethodListItemIdealPaymentMethodIdeal }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
