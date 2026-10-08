# frozen_string_literal: true

module Whop_sdk
  module ClaimLinks
    module Types
      module RetrieveClaimLinksResponseStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        FULLY_CLAIMED = "fully_claimed"
        CANCELED = "canceled"
        EXPIRED = "expired"
      end
    end
  end
end
