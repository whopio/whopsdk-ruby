# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradeOrderResult < Internal::Types::Model
      field :average_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :client_order_id, -> { String }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true

      field :filled_size, -> { String }, optional: false, nullable: true

      field :hyperliquid, -> { Whop_sdk::Types::TradingHyperliquidOrder }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :market, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradeOrderResultObject }, optional: false, nullable: false

      field :order_type, -> { Whop_sdk::Types::TradeOrderResultOrderType }, optional: false, nullable: false

      field :parent_client_order_id, -> { String }, optional: false, nullable: true

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :provider_order_id, -> { String }, optional: false, nullable: true

      field :side, -> { Whop_sdk::Types::TradeOrderResultSide }, optional: false, nullable: false

      field :size, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::TradeOrderResultStatus }, optional: false, nullable: false
    end
  end
end
