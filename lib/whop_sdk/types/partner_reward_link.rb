# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerRewardLink < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :max_redemptions, -> { Integer }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :partner_reward_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :qualification_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :qualification_income_source, -> { Whop_sdk::Types::PartnerRewardLinkQualificationIncomeSource }, optional: false, nullable: true

      field :redemptions, -> { Integer }, optional: false, nullable: false

      field :referral_url, -> { String }, optional: false, nullable: true

      field :referred_business_reward_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :reward_type, -> { Whop_sdk::Types::PartnerRewardLinkRewardType }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PartnerRewardLinkStatus }, optional: false, nullable: false
    end
  end
end
