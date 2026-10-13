# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeType
      extend Whop_sdk::Internal::Types::Enum

      BUY = "buy"
      CLOSE = "close"
      ORDER = "order"
      DEPOSIT = "deposit"
      WITHDRAW = "withdraw"
    end
  end
end
