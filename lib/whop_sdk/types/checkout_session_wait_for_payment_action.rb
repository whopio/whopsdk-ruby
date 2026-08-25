# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionWaitForPaymentAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :poll_after_seconds, -> { Integer }, optional: false, nullable: false
    end
  end
end
