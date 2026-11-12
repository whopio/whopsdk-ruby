# frozen_string_literal: true

module Whop_sdk
  module Types
    class Candle < Internal::Types::Model
      field :close, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :high, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :low, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :open, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :started_at, -> { String }, optional: false, nullable: false

      field :volume, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
