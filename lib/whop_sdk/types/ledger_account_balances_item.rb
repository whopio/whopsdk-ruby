# frozen_string_literal: true

module Whop_sdk
  module Types
    # A cached balance for a LedgerAccount in respect to a currency.
    class LedgerAccountBalancesItem < Internal::Types::Model
      field :balance, -> { Integer }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :pending_balance, -> { Integer }, optional: false, nullable: false

      field :reserve_balance, -> { Integer }, optional: false, nullable: false
    end
  end
end
