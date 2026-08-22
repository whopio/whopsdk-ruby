# frozen_string_literal: true

module Whop_sdk
  module Types
    # The owner of the ledger account.
    class LedgerAccountOwner < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :typename

      member -> { Whop_sdk::Types::LedgerAccountOwnerUser }, key: "USER"

      member -> { Whop_sdk::Types::LedgerAccountOwnerCompany }, key: "COMPANY"
    end
  end
end
