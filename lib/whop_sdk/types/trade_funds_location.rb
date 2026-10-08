# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeFundsLocation
      extend Whop_sdk::Internal::Types::Enum

      WALLET = "wallet"
      TRADING_ACCOUNT = "trading_account"
      UNKNOWN = "unknown"
    end
  end
end
