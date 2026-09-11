# frozen_string_literal: true

module Whop_sdk
  module Types
    class Experiment < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :assignment_seed, -> { String }, optional: false, nullable: false

      field :bucket_by, -> { Whop_sdk::Types::ExperimentBucketBy }, optional: true, nullable: false

      field :configuration_revision, -> { Integer }, optional: false, nullable: false

      field :control, -> { Whop_sdk::Types::ExperimentControl }, optional: false, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :ended_at, -> { String }, optional: true, nullable: false

      field :feature_flag_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :findings, -> { String }, optional: true, nullable: false

      field :flag_key, -> { String }, optional: false, nullable: false

      field :hypothesis, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: false, nullable: false

      field :started_at, -> { String }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::ExperimentStatus }, optional: false, nullable: false

      field :targeting_rules, -> { Internal::Types::Array[Whop_sdk::Types::ExperimentTargetingRulesItem] }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: true

      field :variants, -> { Internal::Types::Array[Whop_sdk::Types::ExperimentVariantsItem] }, optional: false, nullable: false

      field :winning_arm, -> { String }, optional: true, nullable: false
    end
  end
end
