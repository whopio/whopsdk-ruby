# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      module ListPartnerReferralRequestsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        ACCEPTED = "accepted"
        DENIED = "denied"
        CANCELLED = "cancelled"
      end
    end
  end
end
