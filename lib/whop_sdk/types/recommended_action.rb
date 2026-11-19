# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedAction < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :experiment_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :preview, -> { Whop_sdk::Types::RecommendedActionPreview }, optional: false, nullable: true

      field :reasoning, -> { String }, optional: false, nullable: false

      field :run_by_user_id, -> { String }, optional: false, nullable: true

      field :run_ended_at, -> { String }, optional: false, nullable: true

      field :run_started_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::RecommendedActionStatus }, optional: false, nullable: false

      field :target_stats, -> { Internal::Types::Array[Whop_sdk::Types::RecommendedActionStat] }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::RecommendedActionType }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :workflow, -> { Whop_sdk::Types::RecommendedActionWorkflow }, optional: false, nullable: true
    end
  end
end
