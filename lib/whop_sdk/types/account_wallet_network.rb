# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountWalletNetwork
      extend Whop_sdk::Internal::Types::Enum

      SOLANA = "solana"
      ETHEREUM = "ethereum"
      BITCOIN = "bitcoin"
    end
  end
end
