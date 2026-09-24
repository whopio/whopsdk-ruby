# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingPositionLeverage < Internal::Types::Model
      field :type, -> { Whop_sdk::Types::TradingPositionLeverageType }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
