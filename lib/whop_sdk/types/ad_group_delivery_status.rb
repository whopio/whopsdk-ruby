# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdGroupDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      ALL_ADS_REJECTED = "all_ads_rejected"
      REJECTED = "rejected"
      DRAFT = "draft"
      NO_ADS = "no_ads"
      CAMPAIGN_PAUSED = "campaign_paused"
      PAUSED = "paused"
      PROCESSING = "processing"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      COMPLETED = "completed"
      ADS_OFF = "ads_off"
      LEARNING_LIMITED = "learning_limited"
      LEARNING = "learning"
      ACTIVE = "active"
    end
  end
end
