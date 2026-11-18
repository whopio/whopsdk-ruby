# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      REJECTED = "rejected"
      IN_REVIEW = "in_review"
      DRAFT = "draft"
      PAUSED = "paused"
      PROCESSING = "processing"
      REVISE_CONTENT = "revise_content"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      LEARNING = "learning"
      ACTIVE = "active"
    end
  end
end
