# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class UpdateRecommendedActionsRequestWorkflowStepsItem < Internal::Types::Model
        field :arguments, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :error, -> { String }, optional: true, nullable: false

        field :operation, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::RecommendedActions::Types::UpdateRecommendedActionsRequestWorkflowStepsItemStatus }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
