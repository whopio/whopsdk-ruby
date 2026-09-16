# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      class ReplacePaymentRulesRequestConditionsAllItem < Internal::Types::Model
        field :field, -> { Whop_sdk::PaymentRules::Types::ReplacePaymentRulesRequestConditionsAllItemField }, optional: false, nullable: false

        field :operator, -> { Whop_sdk::PaymentRules::Types::ReplacePaymentRulesRequestConditionsAllItemOperator }, optional: false, nullable: false

        field :value, -> { Whop_sdk::Types::PaymentRuleConditionValue }, optional: false, nullable: false
      end
    end
  end
end
