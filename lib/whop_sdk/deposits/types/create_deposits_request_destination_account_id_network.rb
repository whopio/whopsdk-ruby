# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      module CreateDepositsRequestDestinationAccountIDNetwork
        extend Whop_sdk::Internal::Types::Enum

        ETHEREUM = "ethereum"
        POLYGON = "polygon"
        BASE = "base"
        SOLANA = "solana"
      end
    end
  end
end
