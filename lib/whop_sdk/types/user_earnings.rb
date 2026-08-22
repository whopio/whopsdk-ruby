# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserEarnings < Internal::Types::Model
      field :first_earned_at, -> { String }, optional: false, nullable: true

      field :owned_accounts, -> { Whop_sdk::Types::UserEarningsAmount }, optional: false, nullable: false

      field :personal, -> { Whop_sdk::Types::UserEarningsAmount }, optional: false, nullable: false

      field :total, -> { Whop_sdk::Types::UserEarningsAmount }, optional: false, nullable: false
    end
  end
end
