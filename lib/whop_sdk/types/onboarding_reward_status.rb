# frozen_string_literal: true

module Whop_sdk
  module Types
    module OnboardingRewardStatus
      extend Whop_sdk::Internal::Types::Enum

      AVAILABLE = "available"
      FULLY_CLAIMED = "fully_claimed"
      EXPIRED = "expired"
      UNAVAILABLE = "unavailable"
    end
  end
end
