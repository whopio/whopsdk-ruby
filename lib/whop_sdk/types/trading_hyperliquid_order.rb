# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingHyperliquidOrder < Internal::Types::Model
      field :reduce_only, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :trigger_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
