# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      module ListBountiesRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        SCHEDULED = "scheduled"
        OPEN = "open"
        CLOSED = "closed"
        COMPLETED = "completed"
        CANCELED = "canceled"
      end
    end
  end
end
