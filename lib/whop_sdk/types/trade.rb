# frozen_string_literal: true

module Whop_sdk
  module Types
    class Trade < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :cancellations, -> { Internal::Types::Array[Whop_sdk::Types::TradeCancellationResult] }, optional: false, nullable: true

      field :completed_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :failure_code, -> { Whop_sdk::Types::TradeFailureCode }, optional: false, nullable: true

      field :hyperliquid, -> { Whop_sdk::Types::TradeHyperliquid }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :instrument_type, -> { Whop_sdk::Types::TradeInstrumentType }, optional: false, nullable: false

      field :leverage, -> { Whop_sdk::Types::TradeLeverage }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::TradeObject }, optional: false, nullable: false

      field :operation_type, -> { Whop_sdk::Types::TradeOperationType }, optional: false, nullable: false

      field :orders, -> { Internal::Types::Array[Whop_sdk::Types::TradeOrderResult] }, optional: false, nullable: true

      field :provider, -> { Whop_sdk::Types::TradeProvider }, optional: false, nullable: false

      field :requested_orders, -> { Internal::Types::Array[Whop_sdk::Types::TradeRequestedOrder] }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::TradeStatus }, optional: false, nullable: false

      field :trade_id, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: true
    end
  end
end
