# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradingOrderTimeInForce
      extend Whop_sdk::Internal::Types::Enum

      ADD_LIQUIDITY_ONLY = "add_liquidity_only"
      GOOD_TIL_CANCELED = "good_til_canceled"
      IMMEDIATE_OR_CANCEL = "immediate_or_cancel"
    end
  end
end
