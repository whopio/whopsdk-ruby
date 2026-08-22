# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      module LeaderboardPartnersRequestPeriod
        extend Whop_sdk::Internal::Types::Enum

        DAY = "day"
        MONTH = "month"
        YEAR = "year"
        LAST30DAYS = "last_30_days"
        ALL_TIME = "all_time"
      end
    end
  end
end
