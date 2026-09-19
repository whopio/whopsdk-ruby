# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerReferralReward < Internal::Types::Model
      field :bot_qualification_type, -> { Whop_sdk::Types::PartnerReferralRewardBotQualificationType }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :qualification_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :recipient, -> { Whop_sdk::Types::PartnerReferralRewardRecipient }, optional: false, nullable: true

      field :recipient_id, -> { String }, optional: false, nullable: true

      field :reward_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
