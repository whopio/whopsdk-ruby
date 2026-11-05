# frozen_string_literal: true

module Whop_sdk
  module ReviewReports
    module Types
      module ListReviewReportsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        ACCEPTED = "accepted"
        REJECTED = "rejected"
      end
    end
  end
end
