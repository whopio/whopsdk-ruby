# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      module PostAdGroupUpdatedPayloadDataDeliveryStatus
        extend Whop_sdk::Internal::Types::Enum

        ALL_ADS_REJECTED = "all_ads_rejected"
        REJECTED = "rejected"
        DRAFT = "draft"
        CAMPAIGN_PAUSED = "campaign_paused"
        PAUSED = "paused"
        IN_REVIEW = "in_review"
        PROCESSING = "processing"
        ISSUES = "issues"
        SCHEDULED = "scheduled"
        COMPLETED = "completed"
        LEARNING = "learning"
        ACTIVE = "active"
      end
    end
  end
end
