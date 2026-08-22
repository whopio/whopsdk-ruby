# frozen_string_literal: true

module Whop_sdk
  module Types
    module BountyListItemScheduledFrequency
      extend Whop_sdk::Internal::Types::Enum

      ONCE = "once"
      HOURLY = "hourly"
      DAILY = "daily"
      WEEKLY = "weekly"
      MONTHLY = "monthly"
    end
  end
end
