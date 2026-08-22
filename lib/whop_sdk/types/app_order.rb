# frozen_string_literal: true

module Whop_sdk
  module Types
    module AppOrder
      extend Whop_sdk::Internal::Types::Enum

      CREATED_AT = "created_at"
      DISCOVERABLE_AT = "discoverable_at"
      TOTAL_INSTALLS_LAST30DAYS = "total_installs_last_30_days"
      TOTAL_INSTALLS_LAST7DAYS = "total_installs_last_7_days"
      TIME_SPENT = "time_spent"
      TIME_SPENT_LAST24HOURS = "time_spent_last_24_hours"
      DAILY_ACTIVE_USERS = "daily_active_users"
      AI_PROMPT_COUNT = "ai_prompt_count"
      TOTAL_AI_COST_USD = "total_ai_cost_usd"
      TOTAL_AI_TOKENS = "total_ai_tokens"
      LAST_AI_PROMPT_AT = "last_ai_prompt_at"
      AI_AVERAGE_RATING = "ai_average_rating"
    end
  end
end
