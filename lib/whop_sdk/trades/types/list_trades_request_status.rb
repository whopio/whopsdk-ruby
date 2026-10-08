# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      module ListTradesRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        PROCESSING = "processing"
        IN_REVIEW = "in_review"
        COMPLETED = "completed"
        FAILED = "failed"
      end
    end
  end
end
