# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      module ListAdGroupsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        PAUSED = "paused"
        REJECTED = "rejected"
        DUPLICATING = "duplicating"
      end
    end
  end
end
