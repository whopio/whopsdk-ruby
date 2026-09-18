# frozen_string_literal: true

module Whop_sdk
  module Types
    module PartnerReferralRequestStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      ACCEPTED = "accepted"
      DENIED = "denied"
      CANCELLED = "cancelled"
    end
  end
end
