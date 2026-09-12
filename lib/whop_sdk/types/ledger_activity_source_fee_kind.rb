# frozen_string_literal: true

module Whop_sdk
  module Types
    module LedgerActivitySourceFeeKind
      extend Whop_sdk::Internal::Types::Enum

      PAYOUT = "payout"
      TRANSFER = "transfer"
      DEPOSIT = "deposit"
      SWAP = "swap"
      CARD_SPEND = "card_spend"
    end
  end
end
