# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          module ListEarningsRequestOrder
            extend Whop_sdk::Internal::Types::Enum

            CREATED_AT = "created_at"
            COMMISSION_AMOUNT = "commission_amount"
            TRANSACTION_AMOUNT = "transaction_amount"
            PAYOUT_AT = "payout_at"
          end
        end
      end
    end
  end
end
