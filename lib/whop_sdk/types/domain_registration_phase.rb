# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainRegistrationPhase
      extend Whop_sdk::Internal::Types::Enum

      AWAITING_PAYMENT = "awaiting_payment"
      ORDERING = "ordering"
      DELEGATING = "delegating"
      HELD = "held"
      EXPIRED = "expired"
      FAILED = "failed"
      RELEASING = "releasing"
    end
  end
end
