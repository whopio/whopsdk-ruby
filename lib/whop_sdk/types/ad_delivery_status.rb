# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      REJECTED = "rejected"
      IN_REVIEW = "in_review"
      DRAFT = "draft"
      CAMPAIGN_PAUSED = "campaign_paused"
      AD_GROUP_PAUSED = "ad_group_paused"
      PAUSED = "paused"
      PROCESSING = "processing"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      LEARNING_LIMITED = "learning_limited"
      LEARNING = "learning"
      ACTIVE = "active"
    end
  end
end
