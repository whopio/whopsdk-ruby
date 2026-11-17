# frozen_string_literal: true

module Whop_sdk
  module Types
    # The value to compare against. `risk_score` takes a whole number from 0 to 100, and `amount_in_usd` a number of at
    # least 0. The `in` and `not_in` operators take an array of strings. Other fields take a string. The check fields
    # accept `PASS`, `FAIL`, `UNAVAILABLE`, and `UNCHECKED`.
    class PaymentRuleConditionValue < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Integer }

      member -> { String }

      member -> { Internal::Types::Array[String] }
    end
  end
end
