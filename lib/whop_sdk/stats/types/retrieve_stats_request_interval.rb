# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      module RetrieveStatsRequestInterval
        extend Whop_sdk::Internal::Types::Enum

        MINUTE = "minute"
        FIVE_MINUTES = "five_minutes"
        THIRTY_MINUTES = "thirty_minutes"
        HOUR = "hour"
        DAY = "day"
        WEEK = "week"
        MONTH = "month"
        YEAR = "year"
      end
    end
  end
end
