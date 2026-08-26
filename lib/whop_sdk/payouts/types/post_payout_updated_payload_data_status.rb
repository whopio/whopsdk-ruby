# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module PostPayoutUpdatedPayloadDataStatus
        extend Whop_sdk::Internal::Types::Enum

        REQUESTED = "requested"
        IN_REVIEW = "in_review"
        PROCESSING = "processing"
        COMPLETED = "completed"
        REVERSED = "reversed"
        CANCELED = "canceled"
        FAILED = "failed"
        DENIED = "denied"
      end
    end
  end
end
