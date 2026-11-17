# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      REJECTED = "rejected"
      IN_REVIEW = "in_review"
      DRAFT = "draft"
      CAMPAIGN_PAUSED = "campaign_paused"
      PAUSED = "paused"
      PROCESSING = "processing"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      LEARNING = "learning"
      ACTIVE = "active"
    end
  end
end
