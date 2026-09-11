# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class UpdateExperimentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :control, -> { Whop_sdk::Experiments::Types::UpdateExperimentsRequestControl }, optional: true, nullable: false

        field :hypothesis, -> { String }, optional: true, nullable: false

        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

        field :targeting_rules, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::UpdateExperimentsRequestTargetingRulesItem] }, optional: true, nullable: false

        field :variants, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::UpdateExperimentsRequestVariantsItem] }, optional: true, nullable: false
      end
    end
  end
end
