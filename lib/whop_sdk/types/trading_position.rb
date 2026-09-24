# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingPosition < Internal::Types::Model
      field :entry_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :hyperliquid, -> { Whop_sdk::Types::TradingHyperliquidPosition }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :market, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradingPositionObject }, optional: false, nullable: false

      field :position_value, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :side, -> { Whop_sdk::Types::TradingPositionSide }, optional: false, nullable: false

      field :size, -> { String }, optional: false, nullable: false

      field :unrealized_pnl, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
