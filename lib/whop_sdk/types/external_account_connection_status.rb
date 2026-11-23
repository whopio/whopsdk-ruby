# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExternalAccountConnectionStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      RECONNECT_REQUIRED = "reconnect_required"
    end
  end
end
