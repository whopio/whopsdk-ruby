# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Category `bank_debit` only. A type that declares a secure field (`sepa_debit`) sends the element's tokenized
      # credential as `token`. `us_bank_account` sends nothing here — the buyer links the account after confirm, through
      # the hosted bank-connection flow the payment parks behind.
      class CreateConfirmationTokensRequestPaymentMethodBankDebit < Internal::Types::Model
        field :token, -> { String }, optional: true, nullable: false
      end
    end
  end
end
