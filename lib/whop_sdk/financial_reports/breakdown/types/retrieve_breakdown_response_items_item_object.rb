# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        module RetrieveBreakdownResponseItemsItemObject
          extend Whop_sdk::Internal::Types::Enum

          USER = "user"
          ACCOUNT = "account"
          MERCHANT = "merchant"
          PAYOUT_DESTINATION = "payout_destination"
          BALANCE = "balance"
        end
      end
    end
  end
end
