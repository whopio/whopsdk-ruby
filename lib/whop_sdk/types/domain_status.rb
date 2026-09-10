# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING_VERIFICATION = "pending_verification"
      PROVISIONING = "provisioning"
      ACTIVE = "active"
      ACTION_REQUIRED = "action_required"
      DELETING = "deleting"
      REMOVED = "removed"
    end
  end
end
