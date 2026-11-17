# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      module PostAdCampaignUpdatedPayloadDataDeliveryStatus
        extend Whop_sdk::Internal::Types::Enum

        PAYMENT_FAILED = "payment_failed"
        ALL_ADS_REJECTED = "all_ads_rejected"
        DRAFT = "draft"
        PAUSED = "paused"
        IN_REVIEW = "in_review"
        LEARNING = "learning"
        PROCESSING = "processing"
        REVISE_CONTENT = "revise_content"
        ISSUES = "issues"
        SCHEDULED = "scheduled"
        COMPLETED = "completed"
        ACTIVE = "active"
      end
    end
  end
end
