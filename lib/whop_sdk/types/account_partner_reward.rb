# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountPartnerReward < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :qualification_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :qualification_progress, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :qualification_type, -> { Whop_sdk::Types::AccountPartnerRewardQualificationType }, optional: false, nullable: false

      field :reward_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AccountPartnerRewardStatus }, optional: false, nullable: false
    end
  end
end
