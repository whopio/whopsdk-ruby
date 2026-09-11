# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExperimentExposure < Internal::Types::Model
      field :configuration_revision, -> { Integer }, optional: true, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :experiment_id, -> { String }, optional: true, nullable: false

      field :flag_key, -> { String }, optional: true, nullable: false

      field :related_resource, -> { Whop_sdk::Types::ExperimentResourceReference }, optional: true, nullable: false

      field :variant, -> { String }, optional: false, nullable: true
    end
  end
end
