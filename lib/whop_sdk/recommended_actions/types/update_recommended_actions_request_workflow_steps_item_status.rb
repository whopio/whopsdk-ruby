# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      module UpdateRecommendedActionsRequestWorkflowStepsItemStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        RUNNING = "running"
        SUCCEEDED = "succeeded"
        FAILED = "failed"
        SKIPPED = "skipped"
      end
    end
  end
end
