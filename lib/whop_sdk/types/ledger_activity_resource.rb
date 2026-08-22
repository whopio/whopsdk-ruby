# frozen_string_literal: true

module Whop_sdk
  module Types
    # Resource associated with this ledger activity.
    class LedgerActivityResource < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Whop_sdk::Types::LedgerActivityResourceLogoURL }

      member -> { Whop_sdk::Types::LedgerActivityResourceName }

      member -> { Whop_sdk::Types::LedgerActivityResourceTwo }

      member -> { Whop_sdk::Types::LedgerActivityResourceOwner }

      member -> { Whop_sdk::Types::LedgerActivityResourceBank }

      member -> { Whop_sdk::Types::LedgerActivityResourceAccountReference }

      member -> { Whop_sdk::Types::LedgerActivityResourceAuthorizedAt }
    end
  end
end
