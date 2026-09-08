# frozen_string_literal: true

module Whop_sdk
  module Types
    class OnboardingReward < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :max_redemptions, -> { Integer }, optional: false, nullable: true

      field :partner, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :qualification_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :qualification_income_source, -> { Whop_sdk::Types::OnboardingRewardQualificationIncomeSource }, optional: false, nullable: true

      field :qualification_met, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :qualification_progress, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :remaining_redemptions, -> { Integer }, optional: false, nullable: true

      field :reward_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :reward_type, -> { Whop_sdk::Types::OnboardingRewardRewardType }, optional: false, nullable: false

      field :rewarded, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::OnboardingRewardStatus }, optional: false, nullable: false
    end
  end
end
