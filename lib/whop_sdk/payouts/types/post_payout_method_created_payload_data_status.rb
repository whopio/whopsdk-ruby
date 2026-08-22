# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module PostPayoutMethodCreatedPayloadDataStatus
        extend Whop_sdk::Internal::Types::Enum

        CREATED = "created"
        ACTIVE = "active"
        BROKEN = "broken"
      end
    end
  end
end
