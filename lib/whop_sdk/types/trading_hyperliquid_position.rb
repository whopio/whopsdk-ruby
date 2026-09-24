# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingHyperliquidPosition < Internal::Types::Model
      field :cumulative_funding, -> { Whop_sdk::Types::TradingCumulativeFunding }, optional: false, nullable: false

      field :leverage, -> { Whop_sdk::Types::TradingPositionLeverage }, optional: false, nullable: false

      field :liquidation_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :margin_used, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :return_on_equity, -> { String }, optional: false, nullable: false
    end
  end
end
