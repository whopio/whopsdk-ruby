# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        module RetrieveBreakdownResponseBucket
          extend Whop_sdk::Internal::Types::Enum

          TRANSFERS = "transfers"
          PAYMENTS = "payments"
          CARD_SPEND = "card_spend"
          WITHDRAWALS = "withdrawals"
          SWAPS = "swaps"
        end
      end
    end
  end
end
