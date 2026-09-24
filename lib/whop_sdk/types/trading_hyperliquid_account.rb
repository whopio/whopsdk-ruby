# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingHyperliquidAccount < Internal::Types::Model
      field :address, -> { String }, optional: false, nullable: false

      field :builder_fee_bps, -> { String }, optional: false, nullable: true

      field :margin_summary, -> { Whop_sdk::Types::TradingMarginSummary }, optional: false, nullable: false

      field :websocket_subscriptions, -> { Internal::Types::Array[Whop_sdk::Types::TradingWebsocketSubscription] }, optional: false, nullable: false

      field :websocket_url, -> { String }, optional: false, nullable: false
    end
  end
end
