# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Types
      class CreateTradesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :instrument_type, -> { Whop_sdk::Trades::Types::CreateTradesRequestInstrumentType }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :orders, -> { Internal::Types::Array[Whop_sdk::Trades::Types::CreateTradesRequestOrdersItem] }, optional: false, nullable: false

        field :provider, -> { Whop_sdk::Trades::Types::CreateTradesRequestProvider }, optional: false, nullable: false

        field :slippage_bps, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
