# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      SUBMITTED = "submitted"
      COMPLETED = "completed"
      FAILED = "failed"
      SUBMISSION_UNKNOWN = "submission_unknown"
    end
  end
end
