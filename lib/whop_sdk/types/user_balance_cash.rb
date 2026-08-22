# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBalanceCash < Internal::Types::Model
      field :balance, -> { Integer }, optional: false, nullable: false

      field :balance_usd, -> { Integer }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :in_transit_balance_usd, -> { Integer }, optional: false, nullable: false

      field :pending_balance_usd, -> { Integer }, optional: false, nullable: false

      field :price_usd, -> { Integer }, optional: false, nullable: true

      field :reserve_balance_usd, -> { Integer }, optional: false, nullable: false

      field :total_withdrawable_balance, -> { Integer }, optional: false, nullable: false
    end
  end
end
