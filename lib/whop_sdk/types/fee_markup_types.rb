# frozen_string_literal: true

module Whop_sdk
  module Types
    module FeeMarkupTypes
      extend Whop_sdk::Internal::Types::Enum

      CRYPTO_WITHDRAWAL_MARKUP = "crypto_withdrawal_markup"
      RTP_WITHDRAWAL_MARKUP = "rtp_withdrawal_markup"
      NEXT_DAY_BANK_WITHDRAWAL_MARKUP = "next_day_bank_withdrawal_markup"
      BANK_WIRE_WITHDRAWAL_MARKUP = "bank_wire_withdrawal_markup"
      DIGITAL_WALLET_WITHDRAWAL_MARKUP = "digital_wallet_withdrawal_markup"
      TRANSFER_MARKUP = "transfer_markup"
      CRYPTO_DEPOSIT_MARKUP = "crypto_deposit_markup"
      BANK_DEPOSIT_MARKUP = "bank_deposit_markup"
      CRYPTO_SWAP_MARKUP = "crypto_swap_markup"
    end
  end
end
