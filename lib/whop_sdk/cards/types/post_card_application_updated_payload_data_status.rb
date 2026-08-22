# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      module PostCardApplicationUpdatedPayloadDataStatus
        extend Whop_sdk::Internal::Types::Enum

        APPROVED = "approved"
        PENDING = "pending"
        MANUAL_REVIEW = "manual_review"
        DENIED = "denied"
        LOCKED = "locked"
        CANCELED = "canceled"
        NEEDS_VERIFICATION = "needs_verification"
        NEEDS_INFORMATION = "needs_information"
      end
    end
  end
end
