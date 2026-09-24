# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradingOrderStatus
      extend Whop_sdk::Internal::Types::Enum

      OPEN = "open"
      FILLED = "filled"
      CANCELED = "canceled"
      TRIGGERED = "triggered"
      REJECTED = "rejected"
    end
  end
end
