# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRuleCondition < Internal::Types::Model
      field :field, -> { Whop_sdk::Types::PaymentRuleConditionField }, optional: false, nullable: false

      field :operator, -> { Whop_sdk::Types::PaymentRuleConditionOperator }, optional: false, nullable: false

      field :value, -> { Whop_sdk::Types::PaymentRuleConditionValue }, optional: false, nullable: false
    end
  end
end
