# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      module ListAdsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        PAUSED = "paused"
        IN_REVIEW = "in_review"
        REJECTED = "rejected"
      end
    end
  end
end
