# frozen_string_literal: true

module Whop_sdk
  module Types
    module VerificationStatuses
      extend Whop_sdk::Internal::Types::Enum

      REQUIRES_INPUT = "requires_input"
      PROCESSING = "processing"
      VERIFIED = "verified"
      CANCELED = "canceled"
      CREATED = "created"
      STARTED = "started"
      SUBMITTED = "submitted"
      APPROVED = "approved"
      DECLINED = "declined"
      RESUBMISSION_REQUESTED = "resubmission_requested"
      EXPIRED = "expired"
      ABANDONED = "abandoned"
      REVIEW = "review"
      ACTION_REQUIRED = "action_required"
      MANUAL_REVIEW = "manual_review"
    end
  end
end
