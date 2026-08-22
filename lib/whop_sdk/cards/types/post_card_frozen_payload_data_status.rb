# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      module PostCardFrozenPayloadDataStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        FROZEN = "frozen"
        CANCELED = "canceled"
        INVITED = "invited"
        DENIED = "denied"
      end
    end
  end
end
