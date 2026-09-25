# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradeRequestedOrder < Internal::Types::Model
      field :client_order_id, -> { String }, optional: false, nullable: false

      field :market, -> { String }, optional: false, nullable: false

      field :order_type, -> { Whop_sdk::Types::TradeRequestedOrderOrderType }, optional: false, nullable: true

      field :parent_client_order_id, -> { String }, optional: false, nullable: true

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :side, -> { Whop_sdk::Types::TradeRequestedOrderSide }, optional: false, nullable: true

      field :size, -> { String }, optional: false, nullable: false

      field :trigger_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
