# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      module CreateConfirmationTokensRequestPaymentMethodCategory
        extend Whop_sdk::Internal::Types::Enum

        CARD = "card"
        WALLET = "wallet"
        BANK_DEBIT = "bank_debit"
        BANK_TRANSFER = "bank_transfer"
        VOUCHER = "voucher"
        REDIRECT = "redirect"
        CRYPTO = "crypto"
        BALANCE = "balance"
        IN_APP_PURCHASE = "in_app_purchase"
        SAVED = "saved"
      end
    end
  end
end
