# frozen_string_literal: true

module Whop_sdk
  module Types
    module WaitlistEntryApprovalFailureReason
      extend Whop_sdk::Internal::Types::Enum

      PLAN_UNAVAILABLE = "plan_unavailable"
      ALREADY_MEMBER = "already_member"
      CHECKOUT_FAILED = "checkout_failed"
      UNKNOWN = "unknown"
    end
  end
end
