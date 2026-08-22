# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      module UpdateCardsResponseLimitFrequency
        extend Whop_sdk::Internal::Types::Enum

        DAILY = "daily"
        WEEKLY = "weekly"
        MONTHLY = "monthly"
        ONE_TIME = "one_time"
        PER_TRANSACTION = "per_transaction"
      end
    end
  end
end
