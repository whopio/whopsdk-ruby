# frozen_string_literal: true

module Whop_sdk
  module Types
    # The ceremony to run. `type` picks the shape, and each type carries only the fields it needs, so switching on
    # `type` gives you exactly that action's payload. Every type carries `blocking`, which says whether the sale depends
    # on this one.
    class CheckoutSessionNextAction < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::CheckoutSessionAuthenticateAction }, key: "AUTHENTICATE"

      member -> { Whop_sdk::Types::CheckoutSessionAwaitClaimAction }, key: "AWAIT_CLAIM"

      member -> { Whop_sdk::Types::CheckoutSessionCompleteAction }, key: "COMPLETE"

      member -> { Whop_sdk::Types::CheckoutSessionRedirectAction }, key: "REDIRECT"

      member -> { Whop_sdk::Types::CheckoutSessionUpgradeAuthenticationAction }, key: "UPGRADE_AUTHENTICATION"

      member -> { Whop_sdk::Types::CheckoutSessionVerifyPhoneAction }, key: "VERIFY_PHONE"

      member -> { Whop_sdk::Types::CheckoutSessionWaitForPaymentAction }, key: "WAIT_FOR_PAYMENT"
    end
  end
end
