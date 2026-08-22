# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppDeployment < Internal::Types::Model
      field :app_id, -> { String }, optional: false, nullable: false

      field :build_id, -> { String }, optional: false, nullable: true

      field :draft, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true

      field :estimated_duration_ms, -> { Integer }, optional: false, nullable: true

      field :estimated_remaining_ms, -> { Integer }, optional: false, nullable: true

      field :finished_at, -> { Integer }, optional: false, nullable: true

      field :phase, -> { Whop_sdk::Types::AppDeploymentPhase }, optional: false, nullable: true

      field :progress, -> { Integer }, optional: false, nullable: true

      field :started_at, -> { Integer }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AppDeploymentStatus }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
