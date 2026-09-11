# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class UpdateExperimentsRequestTargetingRulesItemConditionsItem < Internal::Types::Model
        field :field, -> { String }, optional: true, nullable: false

        field :operator, -> { Whop_sdk::Experiments::Types::UpdateExperimentsRequestTargetingRulesItemConditionsItemOperator }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Experiments::Types::UpdateExperimentsRequestTargetingRulesItemConditionsItemType }, optional: false, nullable: false

        field :value, -> { Object }, optional: false, nullable: false
      end
    end
  end
end
