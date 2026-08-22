# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          module ListEarningsRequestStatus
            extend Whop_sdk::Internal::Types::Enum

            AWAITING_SETTLEMENT = "awaiting_settlement"
            PENDING = "pending"
            COMPLETED = "completed"
            CANCELED = "canceled"
            REVERSED = "reversed"
          end
        end
      end
    end
  end
end
