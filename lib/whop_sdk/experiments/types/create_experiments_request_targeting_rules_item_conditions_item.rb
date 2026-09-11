# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class CreateExperimentsRequestTargetingRulesItemConditionsItem < Internal::Types::Model
        field :field, -> { String }, optional: true, nullable: false

        field :operator, -> { Whop_sdk::Experiments::Types::CreateExperimentsRequestTargetingRulesItemConditionsItemOperator }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Experiments::Types::CreateExperimentsRequestTargetingRulesItemConditionsItemType }, optional: false, nullable: false

        field :value, -> { Object }, optional: false, nullable: false
      end
    end
  end
end
