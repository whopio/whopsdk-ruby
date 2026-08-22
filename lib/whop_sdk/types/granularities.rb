# frozen_string_literal: true

module Whop_sdk
  module Types
    module Granularities
      extend Whop_sdk::Internal::Types::Enum

      HOURLY = "hourly"
      DAILY = "daily"
      WEEKLY = "weekly"
      MONTHLY = "monthly"
    end
  end
end
