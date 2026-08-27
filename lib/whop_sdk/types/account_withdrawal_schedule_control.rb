# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountWithdrawalScheduleControl < Internal::Types::Model
      field :day, -> { Integer }, optional: false, nullable: true

      field :frequency, -> { Whop_sdk::Types::AccountWithdrawalScheduleControlFrequency }, optional: false, nullable: false

      field :next_payout_date, -> { String }, optional: false, nullable: true
    end
  end
end
