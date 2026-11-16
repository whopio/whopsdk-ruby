# frozen_string_literal: true

module Whop_sdk
  module Types
    module LivestreamRecapStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      UNAVAILABLE = "unavailable"
    end
  end
end
