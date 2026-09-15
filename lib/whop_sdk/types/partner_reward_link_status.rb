# frozen_string_literal: true

module Whop_sdk
  module Types
    module PartnerRewardLinkStatus
      extend Whop_sdk::Internal::Types::Enum

      AVAILABLE = "available"
      FULLY_CLAIMED = "fully_claimed"
      EXPIRED = "expired"
      UNAVAILABLE = "unavailable"
    end
  end
end
