# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentTargetingRulesItem < Internal::Types::Model
      field :conditions, -> { Internal::Types::Array[Whop_sdk::Types::ExperimentTargetingRulesItemConditionsItem] }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::ExperimentTargetingRulesItemType }, optional: true, nullable: false
    end
  end
end
