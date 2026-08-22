# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      module ListAdCampaignsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        DRAFT = "draft"
        ACTIVE = "active"
        PAUSED = "paused"
        PAYMENT_FAILED = "payment_failed"
      end
    end
  end
end
