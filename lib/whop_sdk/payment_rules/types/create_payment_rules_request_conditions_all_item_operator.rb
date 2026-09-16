# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      module CreatePaymentRulesRequestConditionsAllItemOperator
        extend Whop_sdk::Internal::Types::Enum

        EQ = "eq"
        NEQ = "neq"
        GT = "gt"
        GTE = "gte"
        LT = "lt"
        LTE = "lte"
        IN = "in"
        NOT_IN = "not_in"
        CONTAINS = "contains"
        STARTS_WITH = "starts_with"
        ENDS_WITH = "ends_with"
      end
    end
  end
end
