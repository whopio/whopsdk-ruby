# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRuleConditions < Internal::Types::Model
      field :all, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRuleCondition] }, optional: false, nullable: false
    end
  end
end
