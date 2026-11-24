# frozen_string_literal: true

module Whop_sdk
  module Types
    # Takes a fixed amount off.
    class PaymentRegisterDiscountFlatAmount < Internal::Types::Model
      field :amount_off, -> { Whop_sdk::Types::PaymentRegisterDiscountFlatAmountAmountOff }, optional: false, nullable: false
    end
  end
end
