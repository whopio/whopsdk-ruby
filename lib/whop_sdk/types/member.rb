# frozen_string_literal: true

module Whop_sdk
  module Types
    class Member < Internal::Types::Model
      field :access_level, -> { Whop_sdk::Types::MemberAccessLevel }, optional: false, nullable: false

      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :display_name, -> { String }, optional: false, nullable: false

      field :earnings_usd, -> { Whop_sdk::Types::UserEarningsAmount }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: false

      field :last_accessed_at, -> { String }, optional: false, nullable: true

      field :most_recent_action, -> { Whop_sdk::Types::MemberMostRecentAction }, optional: false, nullable: true

      field :most_recent_action_at, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :phone_number, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::MemberStatus }, optional: false, nullable: false

      field :token_balance, -> { Integer }, optional: false, nullable: false

      field :usd_total_spent, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true
    end
  end
end
