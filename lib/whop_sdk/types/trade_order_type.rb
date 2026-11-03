# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeOrderType
      extend Whop_sdk::Internal::Types::Enum

      MARKET = "market"
      LIMIT = "limit"
      TAKE_PROFIT = "take_profit"
      STOP_LOSS = "stop_loss"
    end
  end
end
