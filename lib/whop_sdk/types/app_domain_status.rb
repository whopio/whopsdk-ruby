# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppDomainStatus
      extend Whop_sdk::Internal::Types::Enum

      IDLE = "idle"
      PENDING = "pending"
      READY = "ready"
      ACTION_REQUIRED = "action_required"
      RELEASING = "releasing"
    end
  end
end
