# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdGroupDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      REJECTED = "rejected"
      DRAFT = "draft"
      PAUSED = "paused"
      IN_REVIEW = "in_review"
      PROCESSING = "processing"
      REVISE_CONTENT = "revise_content"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      COMPLETED = "completed"
      LEARNING = "learning"
      ACTIVE = "active"
    end
  end
end
