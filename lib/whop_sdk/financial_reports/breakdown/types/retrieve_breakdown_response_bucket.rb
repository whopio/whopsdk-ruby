# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        module RetrieveBreakdownResponseBucket
          extend Whop_sdk::Internal::Types::Enum

          TRANSFERS = "transfers"
          PAYMENTS = "payments"
          REFUNDS = "refunds"
          ADS = "ads"
          CARD_SPEND = "card_spend"
          CARD_AUTHORIZATION_RELEASES = "card_authorization_releases"
          WITHDRAWALS = "withdrawals"
          SWAPS = "swaps"
        end
      end
    end
  end
end
