# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppMarketplaceStatus
      extend Whop_sdk::Internal::Types::Enum

      NOT_AVAILABLE = "not_available"
      PENDING_REVIEW = "pending_review"
      LIVE_MARKETPLACE = "live_marketplace"
    end
  end
end
