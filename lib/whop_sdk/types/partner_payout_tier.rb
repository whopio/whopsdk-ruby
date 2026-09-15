# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerPayoutTier < Internal::Types::Model
      field :duration, -> { Whop_sdk::Types::PartnerPayoutDuration }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Array[Whop_sdk::Types::PartnerPayoutRate] }, optional: false, nullable: false

      field :tier, -> { Whop_sdk::Types::PartnerPayoutTierTier }, optional: false, nullable: false
    end
  end
end
