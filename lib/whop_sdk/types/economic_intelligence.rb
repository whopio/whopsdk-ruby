# frozen_string_literal: true

module Whop_sdk
  module Types
    class EconomicIntelligence < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :action_type, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :executed_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :reasoning, -> { String }, optional: false, nullable: true

      field :result_url, -> { String }, optional: false, nullable: true

      field :run_by_user_id, -> { String }, optional: false, nullable: true

      field :run_ended_at, -> { String }, optional: false, nullable: true

      field :run_started_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::EconomicIntelligenceStatus }, optional: false, nullable: false

      field :superseded_at, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
