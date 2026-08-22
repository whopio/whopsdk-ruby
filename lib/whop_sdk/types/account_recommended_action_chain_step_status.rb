# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountRecommendedActionChainStepStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      REDIRECTED = "redirected"
      RUNNING = "running"
      SUCCEEDED = "succeeded"
      FAILED = "failed"
    end
  end
end
