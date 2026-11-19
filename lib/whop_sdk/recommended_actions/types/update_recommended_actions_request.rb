# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class UpdateRecommendedActionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :workflow, -> { Whop_sdk::RecommendedActions::Types::UpdateRecommendedActionsRequestWorkflow }, optional: false, nullable: false
      end
    end
  end
end
