# frozen_string_literal: true

module Whop_sdk
  module Types
    class Market < Internal::Types::Model
      field :change24h_percentage, -> { Integer }, optional: false, nullable: true, api_name: "change_24h_percentage"

      field :id, -> { String }, optional: false, nullable: false

      field :instrument_type, -> { Whop_sdk::Types::MarketInstrumentType }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :max_leverage, -> { Integer }, optional: false, nullable: true

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :size_decimals, -> { Integer }, optional: false, nullable: false

      field :volume24h, -> { Whop_sdk::Types::Money }, optional: false, nullable: true, api_name: "volume_24h"
    end
  end
end
