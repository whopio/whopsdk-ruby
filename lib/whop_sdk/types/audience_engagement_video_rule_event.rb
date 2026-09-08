# frozen_string_literal: true

module Whop_sdk
  module Types
    module AudienceEngagementVideoRuleEvent
      extend Whop_sdk::Internal::Types::Enum

      WATCHED3SECONDS = "watched_3_seconds"
      WATCHED10SECONDS = "watched_10_seconds"
      WATCHED15SECONDS = "watched_15_seconds"
      WATCHED25PERCENT = "watched_25_percent"
      WATCHED50PERCENT = "watched_50_percent"
      WATCHED75PERCENT = "watched_75_percent"
      WATCHED95PERCENT = "watched_95_percent"
    end
  end
end
