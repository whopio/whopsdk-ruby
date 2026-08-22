# frozen_string_literal: true

module Whop_sdk
  module Types
    module PayoutAccountCalculatedStatuses
      extend Whop_sdk::Internal::Types::Enum

      CONNECTED = "connected"
      DISABLED = "disabled"
      ACTION_REQUIRED = "action_required"
      PENDING_VERIFICATION = "pending_verification"
      VERIFICATION_FAILED = "verification_failed"
      MANUAL_REVIEW = "manual_review"
      DENIED = "denied"
      NOT_STARTED = "not_started"
      BLOCKED_BY_PARENT = "blocked_by_parent"
    end
  end
end
