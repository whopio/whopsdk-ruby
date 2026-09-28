# frozen_string_literal: true

module Whop_sdk
  module Types
    module SocialAccountPartnershipStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      REVOKED = "revoked"
    end
  end
end
