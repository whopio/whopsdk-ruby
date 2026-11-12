# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingSpotAccount < Internal::Types::Model
      field :holdings, -> { Internal::Types::Array[Whop_sdk::Types::TradingSpotHolding] }, optional: false, nullable: false
    end
  end
end
