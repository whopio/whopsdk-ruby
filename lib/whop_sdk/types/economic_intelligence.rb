# frozen_string_literal: true

module Whop_sdk
  module Types
    class EconomicIntelligence < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :acknowledged_at, -> { String }, optional: false, nullable: true

      field :action_type, -> { String }, optional: false, nullable: true

      field :ai_chat_id, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :executed_at, -> { String }, optional: false, nullable: true

      field :expected_tool_calls, -> { Internal::Types::Array[Whop_sdk::Types::EconomicIntelligenceOperation] }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :input, -> { String }, optional: false, nullable: true

      field :inputs, -> { Internal::Types::Array[Whop_sdk::Types::EconomicIntelligenceInput] }, optional: false, nullable: false

      field :prompt, -> { String }, optional: false, nullable: true

      field :reasoning, -> { String }, optional: false, nullable: true

      field :result_url, -> { String }, optional: false, nullable: true

      field :run_by_user_id, -> { String }, optional: false, nullable: true

      field :run_ended_at, -> { String }, optional: false, nullable: true

      field :run_started_at, -> { String }, optional: false, nullable: true

      field :sentiment, -> { Whop_sdk::Types::EconomicIntelligenceSentiment }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::EconomicIntelligenceStatus }, optional: false, nullable: false

      field :superseded_at, -> { String }, optional: false, nullable: true

      field :target_url, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :user_feedback, -> { String }, optional: false, nullable: true
    end
  end
end
