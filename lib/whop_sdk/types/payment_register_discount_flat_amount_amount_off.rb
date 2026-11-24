# frozen_string_literal: true

module Whop_sdk
  module Types
    # The amount taken off, in the currency of the sale.
    class PaymentRegisterDiscountFlatAmountAmountOff < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::PaymentRegisterDiscountFlatAmountAmountOffAmount }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false
    end
  end
end
