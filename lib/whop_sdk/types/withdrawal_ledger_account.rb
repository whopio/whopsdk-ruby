# frozen_string_literal: true

module Whop_sdk
  module Types
    # The ledger account from which the withdrawal funds are sourced.
    class WithdrawalLedgerAccount < Internal::Types::Model
      field :company_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
