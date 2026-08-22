# frozen_string_literal: true

module Whop_sdk
  module Types
    # The viewer account that owns this row's ledger. Present only when the response aggregates owned accounts
    # (include_owned_accounts=true); omitted otherwise.
    class LedgerActivityAccount < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :object

      member -> { Whop_sdk::Types::LedgerActivityAccountAccount }, key: "ACCOUNT"

      member -> { Whop_sdk::Types::LedgerActivityAccountUser }, key: "USER"
    end
  end
end
