# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingSpotHolding < Internal::Types::Model
      field :average_entry_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :cost_basis, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :market, -> { String }, optional: false, nullable: false

      field :realized_pnl, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :unrealized_pnl, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :unrealized_pnl_percentage, -> { Integer }, optional: false, nullable: true
    end
  end
end
