# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingOrder < Internal::Types::Model
      field :client_order_id, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :hyperliquid, -> { Whop_sdk::Types::TradingHyperliquidOrder }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :market, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradingOrderObject }, optional: false, nullable: false

      field :order_type, -> { Whop_sdk::Types::TradingOrderOrderType }, optional: false, nullable: false

      field :original_size, -> { String }, optional: false, nullable: true

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :provider_order_id, -> { String }, optional: false, nullable: true

      field :side, -> { Whop_sdk::Types::TradingOrderSide }, optional: false, nullable: false

      field :size, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::TradingOrderStatus }, optional: false, nullable: false

      field :status_updated_at, -> { String }, optional: false, nullable: true

      field :time_in_force, -> { Whop_sdk::Types::TradingOrderTimeInForce }, optional: false, nullable: true
    end
  end
end
