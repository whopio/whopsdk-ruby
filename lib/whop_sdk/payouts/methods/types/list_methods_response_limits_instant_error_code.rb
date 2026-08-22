# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        module ListMethodsResponseLimitsInstantErrorCode
          extend Whop_sdk::Internal::Types::Enum

          AMOUNT_TOO_HIGH = "amount_too_high"
          ACCOUNT_DAILY_LIMIT_REACHED = "account_daily_limit_reached"
          RESTRICTED_ACCOUNT = "restricted_account"
          FEATURE_DISABLED = "feature_disabled"
        end
      end
    end
  end
end
