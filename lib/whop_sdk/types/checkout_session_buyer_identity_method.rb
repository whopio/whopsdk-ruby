# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionBuyerIdentityMethod
      extend Whop_sdk::Internal::Types::Enum

      CONFIRMATION_TOKEN_EMAIL = "confirmation_token_email"
      BUYER_EMAIL = "buyer_email"
      SAVED_PAYMENT_METHOD = "saved_payment_method"
      SESSION_INTENT = "session_intent"
      POST_PURCHASE_CLAIM = "post_purchase_claim"
    end
  end
end
