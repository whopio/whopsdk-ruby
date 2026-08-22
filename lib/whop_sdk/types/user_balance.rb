# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBalance < Internal::Types::Model
      field :businesses, -> { Internal::Types::Array[Whop_sdk::Types::UserBalanceBusiness] }, optional: false, nullable: false

      field :businesses_total_usd, -> { String }, optional: false, nullable: false

      field :cash, -> { Internal::Types::Array[Whop_sdk::Types::UserBalanceCash] }, optional: false, nullable: false

      field :cash_usd, -> { String }, optional: false, nullable: false

      field :crypto, -> { Internal::Types::Array[Whop_sdk::Types::UserBalanceToken] }, optional: false, nullable: false

      field :crypto_usd, -> { String }, optional: false, nullable: false

      field :pending_usd, -> { String }, optional: false, nullable: false

      field :total_usd, -> { String }, optional: false, nullable: false

      field :treasury_pending_usd, -> { String }, optional: false, nullable: false
    end
  end
end
