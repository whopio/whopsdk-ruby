# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      module PostAdUpdatedPayloadDataDeliveryStatus
        extend Whop_sdk::Internal::Types::Enum

        REJECTED = "rejected"
        IN_REVIEW = "in_review"
        DRAFT = "draft"
        CAMPAIGN_PAUSED = "campaign_paused"
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
end
