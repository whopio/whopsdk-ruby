# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class ListExecutionsRecommendedActionsResponse < Internal::Types::Model
        field :chain_id, -> { String }, optional: false, nullable: false

        field :executions, -> { Internal::Types::Array[Whop_sdk::Types::RecommendedActionExecution] }, optional: false, nullable: false
      end
    end
  end
end
