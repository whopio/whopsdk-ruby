# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      module UpdateCardsRequestSpendLimitFrequency
        extend Whop_sdk::Internal::Types::Enum

        DAILY = "daily"
        WEEKLY = "weekly"
        MONTHLY = "monthly"
        ONE_TIME = "one_time"
      end
    end
  end
end
