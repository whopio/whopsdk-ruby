# frozen_string_literal: true

module Whop_sdk
  module Types
    module ResolutionCenterCaseStatus
      extend Whop_sdk::Internal::Types::Enum

      AWAITING_MERCHANT = "awaiting_merchant"
      AWAITING_CUSTOMER = "awaiting_customer"
      UNDER_REVIEW = "under_review"
      CLOSED = "closed"
    end
  end
end
