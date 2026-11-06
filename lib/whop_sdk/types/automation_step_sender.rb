# frozen_string_literal: true

module Whop_sdk
  module Types
    # Who a step's message comes from. `object` picks the shape: an `email_address` for an `email` step, a `user` on the
    # team for a `message` step.
    class AutomationStepSender < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :object

      member -> { Whop_sdk::Types::AutomationStepEmailAddressSender }, key: "EMAIL_ADDRESS"

      member -> { Whop_sdk::Types::AutomationStepUserSender }, key: "USER"
    end
  end
end
