# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class RunRecommendedActionsResponse < Internal::Types::Model
        field :chain_id, -> { String }, optional: false, nullable: false

        field :execution, -> { Whop_sdk::RecommendedActions::Types::RunRecommendedActionsResponseExecution }, optional: false, nullable: false
      end
    end
  end
end
