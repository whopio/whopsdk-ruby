# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Category `card` only. Exactly one of `token` or `token_intent`; display fields ride alongside.
      class CreateConfirmationTokensRequestPaymentMethodCard < Internal::Types::Model
        field :brand, -> { String }, optional: true, nullable: false

        field :last4, -> { String }, optional: true, nullable: false

        field :token, -> { String }, optional: true, nullable: false

        field :token_intent, -> { String }, optional: true, nullable: false
      end
    end
  end
end
