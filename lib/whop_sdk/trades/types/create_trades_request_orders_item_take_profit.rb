# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CreateTradesRequestOrdersItemTakeProfit < Internal::Types::Model
        field :limit_price, -> { String }, optional: true, nullable: false

        field :trigger_price, -> { String }, optional: false, nullable: false
      end
    end
  end
end
