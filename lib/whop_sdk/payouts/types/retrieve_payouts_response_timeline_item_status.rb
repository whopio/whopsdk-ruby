# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module RetrievePayoutsResponseTimelineItemStatus
        extend Whop_sdk::Internal::Types::Enum

        REQUESTED = "requested"
        AWAITING_PAYMENT = "awaiting_payment"
        IN_TRANSIT = "in_transit"
        COMPLETED = "completed"
        FAILED = "failed"
        CANCELED = "canceled"
        DENIED = "denied"
      end
    end
  end
end
