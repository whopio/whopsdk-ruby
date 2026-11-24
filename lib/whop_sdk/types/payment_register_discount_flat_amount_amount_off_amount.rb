# frozen_string_literal: true

module Whop_sdk
  module Types
    # The amount in major units, as a decimal string. For example, `"2.50"` is two dollars fifty. It must be more than
    # 0. It can't have more decimal places than the currency.
    class PaymentRegisterDiscountFlatAmountAmountOffAmount < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { String }

      member -> { Integer }
    end
  end
end
