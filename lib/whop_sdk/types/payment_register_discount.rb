# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRegisterDiscount < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::PaymentRegisterDiscountFlatAmount }, key: "FLAT_AMOUNT"

      member -> { Whop_sdk::Types::PaymentRegisterDiscountPercentage }, key: "PERCENTAGE"
    end
  end
end
