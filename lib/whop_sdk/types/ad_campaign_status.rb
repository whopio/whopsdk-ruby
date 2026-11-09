# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdCampaignStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      PAUSED = "paused"
      INACTIVE = "inactive"
      PAYMENT_FAILED = "payment_failed"
      DRAFT = "draft"
      DUPLICATING = "duplicating"
    end
  end
end
