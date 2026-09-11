# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentTargetingRulesItemConditionsItem < Internal::Types::Model
      field :field, -> { String }, optional: true, nullable: false

      field :operator, -> { Whop_sdk::Types::ExperimentTargetingRulesItemConditionsItemOperator }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::ExperimentTargetingRulesItemConditionsItemType }, optional: false, nullable: false

      field :value, -> { Object }, optional: false, nullable: false
    end
  end
end
