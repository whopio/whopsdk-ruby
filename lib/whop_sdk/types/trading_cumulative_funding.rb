# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradingCumulativeFunding < Internal::Types::Model
      field :all_time, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :since_change, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :since_open, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
