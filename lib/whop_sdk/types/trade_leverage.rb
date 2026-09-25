# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradeLeverage < Internal::Types::Model
      field :leverage, -> { Integer }, optional: false, nullable: true

      field :margin_mode, -> { Whop_sdk::Types::TradeLeverageMarginMode }, optional: false, nullable: true

      field :market, -> { String }, optional: false, nullable: false
    end
  end
end
