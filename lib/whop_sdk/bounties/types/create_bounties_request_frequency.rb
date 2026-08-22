# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      module CreateBountiesRequestFrequency
        extend Whop_sdk::Internal::Types::Enum

        ONCE = "once"
        HOURLY = "hourly"
        DAILY = "daily"
        WEEKLY = "weekly"
        MONTHLY = "monthly"
      end
    end
  end
end
