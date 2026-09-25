# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      module CreateTradesRequestOrdersItemOrderType
        extend Whop_sdk::Internal::Types::Enum

        LIMIT = "limit"
        MARKET = "market"
        TAKE_PROFIT = "take_profit"
        STOP_LOSS = "stop_loss"
      end
    end
  end
end
