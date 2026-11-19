# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      # The action's workflow with the arguments to change.
      class UpdateRecommendedActionsRequestWorkflow < Internal::Types::Model
        field :steps, -> { Internal::Types::Array[Whop_sdk::RecommendedActions::Types::UpdateRecommendedActionsRequestWorkflowStepsItem] }, optional: false, nullable: false
      end
    end
  end
end
