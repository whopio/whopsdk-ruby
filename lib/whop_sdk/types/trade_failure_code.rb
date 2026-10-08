# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeFailureCode
      extend Whop_sdk::Internal::Types::Enum

      MARKET_UNAVAILABLE = "market_unavailable"
      LEVERAGE_TOO_HIGH = "leverage_too_high"
      AMOUNT_TOO_SMALL = "amount_too_small"
      ISOLATED_POSITION_OPEN = "isolated_position_open"
      TRADING_PAUSED = "trading_paused"
      FUNDING_FAILED = "funding_failed"
      MARGIN_UNAVAILABLE = "margin_unavailable"
      BUILDER_FEE_UNAPPROVED = "builder_fee_unapproved"
      LEVERAGE_REJECTED = "leverage_rejected"
      LEVERAGE_UNCONFIRMED = "leverage_unconfirmed"
      ORDER_REJECTED = "order_rejected"
      CLOSE_REJECTED = "close_rejected"
      RETURN_FAILED = "return_failed"
    end
  end
end
