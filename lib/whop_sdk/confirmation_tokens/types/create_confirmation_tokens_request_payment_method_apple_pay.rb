# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Type `apple_pay` (category `wallet`) only.
      class CreateConfirmationTokensRequestPaymentMethodApplePay < Internal::Types::Model
        field :merchant_identifier, -> { String }, optional: true, nullable: false

        field :token_intent, -> { String }, optional: false, nullable: false
      end
    end
  end
end
