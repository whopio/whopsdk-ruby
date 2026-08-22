# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      module CreateTransfersRequestType
        extend Whop_sdk::Internal::Types::Enum

        LEDGER = "ledger"
        WALLET_SEND = "wallet_send"
        CLAIM_LINK = "claim_link"
      end
    end
  end
end
