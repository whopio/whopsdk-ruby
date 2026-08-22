# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      module CreateVerificationsResponseStatus
        extend Whop_sdk::Internal::Types::Enum

        NOT_STARTED = "not_started"
        PENDING = "pending"
        PROCESSING = "processing"
        MANUAL_REVIEW = "manual_review"
        APPROVED = "approved"
        REJECTED = "rejected"
        ACTION_REQUIRED = "action_required"
      end
    end
  end
end
