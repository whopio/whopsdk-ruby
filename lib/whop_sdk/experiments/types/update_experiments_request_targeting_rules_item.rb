# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class UpdateExperimentsRequestTargetingRulesItem < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::UpdateExperimentsRequestTargetingRulesItemConditionsItem] }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Experiments::Types::UpdateExperimentsRequestTargetingRulesItemType }, optional: true, nullable: false
      end
    end
  end
end
