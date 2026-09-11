# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      module UpdateExperimentsRequestTargetingRulesItemConditionsItemOperator
        extend Whop_sdk::Internal::Types::Enum

        ANY = "any"
        NONE = "none"
        EQ = "eq"
        NEQ = "neq"
        GT = "gt"
        GTE = "gte"
        LT = "lt"
        LTE = "lte"
      end
    end
  end
end
