# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeOperationType
      extend Whop_sdk::Internal::Types::Enum

      CREATE_ORDERS = "create_orders"
      CANCEL_ORDERS = "cancel_orders"
      UPDATE_LEVERAGE = "update_leverage"
    end
  end
end
