# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingAccount < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :hyperliquid, -> { Whop_sdk::Types::TradingHyperliquidAccount }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradingAccountObject }, optional: false, nullable: false

      field :open_orders, -> { Internal::Types::Array[Whop_sdk::Types::TradingOrder] }, optional: false, nullable: false

      field :positions, -> { Internal::Types::Array[Whop_sdk::Types::TradingPosition] }, optional: false, nullable: false

      field :provider, -> { Whop_sdk::Types::TradingAccountProvider }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
