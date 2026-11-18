# frozen_string_literal: true

module Whop_sdk
  module Types
    module RecommendedActionWorkflowStepStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      RUNNING = "running"
      SUCCEEDED = "succeeded"
      FAILED = "failed"
      SKIPPED = "skipped"
    end
  end
end
