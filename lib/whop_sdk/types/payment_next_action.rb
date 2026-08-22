# frozen_string_literal: true

module Whop_sdk
  module Types
    # What the buyer must do to finish. `type` picks the shape and each type carries only its own `data`, so switching
    # on `type` gives you exactly that step's payload.
    class PaymentNextAction < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::PaymentNextActionAwaitConfirmation }, key: "AWAIT_CONFIRMATION"

      member -> { Whop_sdk::Types::PaymentNextActionDisplayInstructions }, key: "DISPLAY_INSTRUCTIONS"

      member -> { Whop_sdk::Types::PaymentNextActionRedirect }, key: "REDIRECT"
    end
  end
end
