# frozen_string_literal: true

module Whop_sdk
  module Types
    class Market < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :instrument_type, -> { Whop_sdk::Types::MarketInstrumentType }, optional: false, nullable: false

      field :max_leverage, -> { Integer }, optional: false, nullable: true

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :size_decimals, -> { Integer }, optional: false, nullable: false
    end
  end
end
