# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Category `saved` only. Names one of the buyer's own stored payment methods. Requires a buyer credential — the
      # wallet read is scoped to that account, so another user's id reads as not found.
      class CreateConfirmationTokensRequestPaymentMethodSaved < Internal::Types::Model
        field :payment_method, -> { String }, optional: false, nullable: false
      end
    end
  end
end
