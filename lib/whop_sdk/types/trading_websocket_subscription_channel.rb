# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradingWebsocketSubscriptionChannel
      extend Whop_sdk::Internal::Types::Enum

      CLEARINGHOUSE_STATE = "clearinghouse_state"
      OPEN_ORDERS = "open_orders"
      ORDER_UPDATES = "order_updates"
      USER_FILLS = "user_fills"
      USER_EVENTS = "user_events"
    end
  end
end
