# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountWithdrawalScheduleControlFrequency
      extend Whop_sdk::Internal::Types::Enum

      MANUAL = "manual"
      DAILY = "daily"
      WEEKLY = "weekly"
      MONTHLY = "monthly"
    end
  end
end
