# frozen_string_literal: true

module Whop_sdk
  module Types
    # A ledger account represents a financial account on Whop that can hold many balances.
    class LedgerAccount < Internal::Types::Model
      field :balances, -> { Internal::Types::Array[Whop_sdk::Types::LedgerAccountBalancesItem] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :ledger_type, -> { Whop_sdk::Types::LedgerTypes }, optional: false, nullable: false

      field :owner, -> { Whop_sdk::Types::LedgerAccountOwner }, optional: false, nullable: false

      field :payments_approval_status, -> { Whop_sdk::Types::PaymentsApprovalStatuses }, optional: false, nullable: true

      field :payout_account_details, -> { Whop_sdk::Types::LedgerAccountPayoutAccountDetails }, optional: false, nullable: true

      field :payout_quote_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :settlement_time_at, -> { String }, optional: false, nullable: true

      field :transfer_fee, -> { Integer }, optional: false, nullable: true

      field :treasury_balance, -> { Whop_sdk::Types::LedgerAccountTreasuryBalance }, optional: false, nullable: true
    end
  end
end
