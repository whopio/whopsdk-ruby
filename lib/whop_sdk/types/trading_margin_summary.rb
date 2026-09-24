# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingMarginSummary < Internal::Types::Model
      field :account_value, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :total_margin_used, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :total_position_notional, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :total_raw_usd, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :withdrawable, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
