# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      module ListDomainsRequestStatus
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
end
