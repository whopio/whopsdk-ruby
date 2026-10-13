# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CreateTradesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :amount, -> { String }, optional: true, nullable: false

        field :client_order_id, -> { String }, optional: true, nullable: false

        field :instrument_type, -> { Whop_sdk::Trades::Types::CreateTradesRequestInstrumentType }, optional: true, nullable: false

        field :leverage, -> { Integer }, optional: true, nullable: false

        field :market, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :notional, -> { String }, optional: true, nullable: false

        field :order_type, -> { Whop_sdk::Trades::Types::CreateTradesRequestOrderType }, optional: true, nullable: false

        field :price, -> { String }, optional: true, nullable: false

        field :reduce_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :side, -> { Whop_sdk::Trades::Types::CreateTradesRequestSide }, optional: true, nullable: false

        field :size, -> { String }, optional: true, nullable: false

        field :slippage_bps, -> { Integer }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Trades::Types::CreateTradesRequestType }, optional: false, nullable: false
      end
    end
  end
end
