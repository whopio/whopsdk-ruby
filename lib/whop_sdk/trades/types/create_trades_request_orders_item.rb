# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CreateTradesRequestOrdersItem < Internal::Types::Model
        field :market, -> { String }, optional: false, nullable: false

        field :order_type, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrdersItemOrderType }, optional: true, nullable: false

        field :price, -> { String }, optional: true, nullable: false

        field :reduce_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :side, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrdersItemSide }, optional: false, nullable: false

        field :size, -> { String }, optional: false, nullable: false

        field :slippage_bps, -> { Integer }, optional: true, nullable: false

        field :stop_loss, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrdersItemStopLoss }, optional: true, nullable: false

        field :take_profit, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrdersItemTakeProfit }, optional: true, nullable: false

        field :time_in_force, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrdersItemTimeInForce }, optional: true, nullable: false

        field :trigger_price, -> { String }, optional: true, nullable: false
      end
    end
  end
end
