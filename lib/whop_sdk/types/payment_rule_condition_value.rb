# frozen_string_literal: true

module Whop_sdk
  module Types
    # The value to compare against. A number for `risk_score`, a string for the other fields, and an array of strings
    # for the `in` and `not_in` operators.
    class PaymentRuleConditionValue < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Integer }

      member -> { String }

      member -> { Internal::Types::Array[String] }
    end
  end
end
