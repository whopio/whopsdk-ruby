# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Type `google_pay` (category `wallet`) only.
      class CreateConfirmationTokensRequestPaymentMethodGooglePay < Internal::Types::Model
        field :token_intent, -> { String }, optional: false, nullable: false
      end
    end
  end
end
