# frozen_string_literal: true

module Whop_sdk
  module Types
    class ProductAffiliate < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :product, -> { Whop_sdk::Types::PromoCodeProduct }, optional: false, nullable: false

      field :referred_users_count, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ProductAffiliateStatus }, optional: false, nullable: false

      field :total_reward_amount_usd, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ProductAffiliateUser }, optional: false, nullable: false
    end
  end
end
