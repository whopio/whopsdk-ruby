# frozen_string_literal: true

module Whop_sdk
  module Types
    # An affiliate tracks a user's referral performance and commission earnings for a company, including retention
    # rates, revenue metrics, and payout configurations.
    class AffiliateListItem < Internal::Types::Model
      field :active_members_count, -> { Integer }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::AffiliateListItemCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :customer_retention_rate, -> { String }, optional: false, nullable: false

      field :customer_retention_rate_ninety_days, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :monthly_recurring_revenue_usd, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::Status }, optional: false, nullable: true

      field :total_overrides_count, -> { Integer }, optional: false, nullable: false

      field :total_referral_earnings_usd, -> { String }, optional: false, nullable: false

      field :total_referrals_count, -> { Integer }, optional: false, nullable: false

      field :total_revenue_usd, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::AffiliateListItemUser }, optional: false, nullable: false
    end
  end
end
