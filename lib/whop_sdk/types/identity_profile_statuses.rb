# frozen_string_literal: true

module Whop_sdk
  module Types
    module IdentityProfileStatuses
      extend Whop_sdk::Internal::Types::Enum

      NOT_STARTED = "not_started"
      PENDING = "pending"
      MANUAL_REVIEW = "manual_review"
      APPROVED = "approved"
      REJECTED = "rejected"
      ACTION_REQUIRED = "action_required"
    end
  end
end
