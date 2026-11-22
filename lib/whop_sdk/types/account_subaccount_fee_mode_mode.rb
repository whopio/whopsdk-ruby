# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountSubaccountFeeModeMode
      extend Whop_sdk::Internal::Types::Enum

      INHERIT = "inherit"
      SUBACCOUNT_RATES = "subaccount_rates"
      SUBACCOUNT_RATES_COLLECT_DIFFERENCE = "subaccount_rates_collect_difference"
    end
  end
end
