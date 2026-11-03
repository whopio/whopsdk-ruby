# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      # Only for a perpetual order that opens or adds to a position. A stop-loss for the order's full size, armed once
      # the order fills and sent with it as its own trade, whose `parent_id` is this trade.
      class CreateTradesRequestStopLoss < Internal::Types::Model
        field :trigger_price, -> { String }, optional: false, nullable: false
      end
    end
  end
end
