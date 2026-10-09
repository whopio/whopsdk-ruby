# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      module ListDomainsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        IDLE = "idle"
        PENDING = "pending"
        READY = "ready"
        ACTION_REQUIRED = "action_required"
        RELEASING = "releasing"
      end
    end
  end
end
