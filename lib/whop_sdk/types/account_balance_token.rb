# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountBalanceToken < Internal::Types::Model
      field :balance, -> { String }, optional: false, nullable: false

      field :breakdown, -> { Whop_sdk::Types::AccountBalanceBreakdown }, optional: false, nullable: false

      field :icon_url, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false

      field :price_usd, -> { Integer }, optional: false, nullable: true

      field :symbol, -> { String }, optional: false, nullable: false

      field :value_usd, -> { String }, optional: false, nullable: true
    end
  end
end
