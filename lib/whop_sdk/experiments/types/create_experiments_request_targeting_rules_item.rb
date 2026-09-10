# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class CreateExperimentsRequestTargetingRulesItem < Internal::Types::Model
        field :conditions, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::CreateExperimentsRequestTargetingRulesItemConditionsItem] }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Experiments::Types::CreateExperimentsRequestTargetingRulesItemType }, optional: true, nullable: false
      end
    end
  end
end
