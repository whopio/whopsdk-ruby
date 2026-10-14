# frozen_string_literal: true

module Whop_sdk
  module Types
    class User < Internal::Types::Model
      field :balance, -> { Whop_sdk::Types::UserBalance }, optional: false, nullable: true

      field :balance_history, -> { Whop_sdk::Types::UserBalanceHistory }, optional: false, nullable: true

      field :balances, -> { Internal::Types::Array[Whop_sdk::Types::AccountBalanceToken] }, optional: false, nullable: false

      field :banner, -> { Whop_sdk::Types::UserBanner }, optional: false, nullable: true

      field :bio, -> { String }, optional: false, nullable: true

      field :cards, -> { Whop_sdk::Types::AccountCards }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :earnings_usd, -> { Whop_sdk::Types::UserEarnings }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :level, -> { Whop_sdk::Types::OwnerLevel }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :profile_picture, -> { Whop_sdk::Types::UserProfilePicture }, optional: false, nullable: false

      field :social_links, -> { Internal::Types::Array[Whop_sdk::Types::UserSocialLink] }, optional: false, nullable: false

      field :total_usd, -> { String }, optional: false, nullable: true

      field :trading, -> { Whop_sdk::Types::TradingAccount }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false

      field :verification, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :whop_partner_enabled_at, -> { String }, optional: false, nullable: true

      field :whop_partner_onboarded_accounts_count, -> { Integer }, optional: false, nullable: true

      field :whop_partner_verified_at, -> { String }, optional: false, nullable: true
    end
  end
end
