# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeOrderResultStatus
      extend Whop_sdk::Internal::Types::Enum

      OPEN = "open"
      FILLED = "filled"
      REJECTED = "rejected"
    end
  end
end
