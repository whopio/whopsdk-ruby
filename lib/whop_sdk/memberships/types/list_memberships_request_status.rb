# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      module ListMembershipsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        TRIALING = "trialing"
        PAST_DUE = "past_due"
        COMPLETED = "completed"
        CANCELED = "canceled"
        EXPIRED = "expired"
        CANCELING = "canceling"
        PAUSED = "paused"
      end
    end
  end
end
