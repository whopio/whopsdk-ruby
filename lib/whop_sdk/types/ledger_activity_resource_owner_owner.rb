# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceOwnerOwner < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Whop_sdk::Types::LedgerActivityResourceOwnerOwnerLogoURL }

      member -> { Whop_sdk::Types::LedgerActivityResourceOwnerOwnerName }
    end
  end
end
