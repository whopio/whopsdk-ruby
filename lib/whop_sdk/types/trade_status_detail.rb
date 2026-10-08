# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeStatusDetail
      extend Whop_sdk::Internal::Types::Enum

      PARTIAL_FILL = "partial_fill"
      NO_POSITION = "no_position"
      PARTIAL_CLOSE = "partial_close"
      NOTHING_TO_RETURN = "nothing_to_return"
    end
  end
end
