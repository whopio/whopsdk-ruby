# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdCampaignDeliveryStatus
      extend Whop_sdk::Internal::Types::Enum

      PAYMENT_FAILED = "payment_failed"
      ALL_ADS_REJECTED = "all_ads_rejected"
      DRAFT = "draft"
      NO_AD_GROUPS = "no_ad_groups"
      NO_ADS = "no_ads"
      PAUSED = "paused"
      PROCESSING = "processing"
      ISSUES = "issues"
      SCHEDULED = "scheduled"
      COMPLETED = "completed"
      AD_GROUPS_OFF = "ad_groups_off"
      ACTIVE = "active"
    end
  end
end
