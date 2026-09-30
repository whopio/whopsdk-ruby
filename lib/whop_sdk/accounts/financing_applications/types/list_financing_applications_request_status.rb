# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        module ListFinancingApplicationsRequestStatus
          extend Whop_sdk::Internal::Types::Enum

          REQUIRES_COLLECTION = "requires_collection"
          AWAITING_REVIEW = "awaiting_review"
          COMPLETED = "completed"
          APPROVED = "approved"
          DENIED = "denied"
        end
      end
    end
  end
end
