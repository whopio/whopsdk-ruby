# frozen_string_literal: true

module Whop_sdk
  module Types
    module FinancingApplicationStatus
      extend Whop_sdk::Internal::Types::Enum

      REQUIRES_COLLECTION = "requires_collection"
      AWAITING_REVIEW = "awaiting_review"
      COMPLETED = "completed"
      APPROVED = "approved"
      DENIED = "denied"
    end
  end
end
