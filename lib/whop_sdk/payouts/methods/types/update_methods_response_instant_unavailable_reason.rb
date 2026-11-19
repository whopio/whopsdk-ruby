# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        module UpdateMethodsResponseInstantUnavailableReason
          extend Whop_sdk::Internal::Types::Enum

          MINIMUM_CRYPTO_SALES_NOT_MET = "minimum_crypto_sales_not_met"
          NEW_PAYOUT_METHOD_HOLD = "new_payout_method_hold"
        end
      end
    end
  end
end
