# frozen_string_literal: true

module Whop_sdk
  module Types
    module AdGroupStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      PAUSED = "paused"
      REJECTED = "rejected"
      DUPLICATING = "duplicating"
    end
  end
end
