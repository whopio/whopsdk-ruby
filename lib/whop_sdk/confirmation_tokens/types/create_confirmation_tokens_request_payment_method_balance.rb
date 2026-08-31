# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Category `balance` only. Names one of the buyer's spendable platform balances. Requires a buyer credential —
      # whether the caller may spend the wallet is checked against their own grants, so another user's id reads as not
      # found.
      class CreateConfirmationTokensRequestPaymentMethodBalance < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
