# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainPixelState
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      ACTION_REQUIRED = "action_required"
    end
  end
end
