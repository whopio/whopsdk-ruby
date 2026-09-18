# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      module ListPartnerReferralRequestsRequestRequestType
        extend Whop_sdk::Internal::Types::Enum

        MANUAL = "manual"
        OWNERSHIP_TRANSFER = "ownership_transfer"
        REWARD_LINK = "reward_link"
      end
    end
  end
end
