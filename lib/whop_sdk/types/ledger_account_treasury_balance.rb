# frozen_string_literal: true

module Whop_sdk
  module Types
    # The balance cache associated with the account by currency.
    class LedgerAccountTreasuryBalance < Internal::Types::Model
      field :balance, -> { Integer }, optional: false, nullable: false

      field :balance_usd, -> { Integer }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :pending_balance, -> { Integer }, optional: false, nullable: false

      field :reserve_balance, -> { Integer }, optional: false, nullable: false

      field :total_withdrawable_balance, -> { Integer }, optional: false, nullable: false
    end
  end
end
