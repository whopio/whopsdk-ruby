# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdCampaignStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      PAUSED = "paused"
      INACTIVE = "inactive"
      STALE = "stale"
      PENDING_REFUND = "pending_refund"
      PAYMENT_FAILED = "payment_failed"
      DRAFT = "draft"
      IN_REVIEW = "in_review"
      FLAGGED = "flagged"
      IMPORTING = "importing"
      IMPORTED = "imported"
      DUPLICATING = "duplicating"
    end
  end
end
