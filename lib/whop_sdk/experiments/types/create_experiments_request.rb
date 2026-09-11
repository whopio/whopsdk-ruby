# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class CreateExperimentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :bucket_by, -> { Whop_sdk::Experiments::Types::CreateExperimentsRequestBucketBy }, optional: true, nullable: false

        field :control, -> { Whop_sdk::Experiments::Types::CreateExperimentsRequestControl }, optional: true, nullable: false

        field :feature_flag_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :flag_key, -> { String }, optional: false, nullable: false

        field :hypothesis, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

        field :targeting_rules, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::CreateExperimentsRequestTargetingRulesItem] }, optional: true, nullable: false

        field :variants, -> { Internal::Types::Array[Whop_sdk::Experiments::Types::CreateExperimentsRequestVariantsItem] }, optional: true, nullable: false
      end
    end
  end
end
