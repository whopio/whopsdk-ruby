# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainListItemStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING_VERIFICATION = "pending_verification"
      AWAITING_PAYMENT = "awaiting_payment"
      REGISTERING = "registering"
      PROVISIONING = "provisioning"
      ACTIVE = "active"
      ACTION_REQUIRED = "action_required"
      DELETING = "deleting"
      EXPIRED = "expired"
      FAILED = "failed"
      REMOVED = "removed"
    end
  end
end
