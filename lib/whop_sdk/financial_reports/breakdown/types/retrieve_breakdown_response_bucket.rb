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
          APPLICATION_FEES = "application_fees"
          CARD_SPEND = "card_spend"
          CARD_AUTHORIZATION_RELEASES = "card_authorization_releases"
          WITHDRAWALS = "withdrawals"
          WITHDRAWAL_MARKUP = "withdrawal_markup"
          PLATFORM_MARKUP = "platform_markup"
          CLAWBACKS = "clawbacks"
          DISPUTES = "disputes"
          AFFILIATE_EARNINGS = "affiliate_earnings"
          AFFILIATE_PAYOUTS = "affiliate_payouts"
          REVENUE_SHARE = "revenue_share"
          SWAPS = "swaps"
          CARD_LOADS = "card_loads"
        end
      end
    end
  end
end
