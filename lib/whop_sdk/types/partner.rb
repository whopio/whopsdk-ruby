# frozen_string_literal: true

module Whop_sdk
  module Types
    class Partner < Internal::Types::Model
      field :certification_complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :joined_at, -> { String }, optional: false, nullable: true

      field :payout_rates, -> { Internal::Types::Array[Whop_sdk::Types::PartnerPayoutTier] }, optional: false, nullable: false

      field :referred_businesses_count, -> { Integer }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :verification_waitlist_joined, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :whop_partner_verified_at, -> { String }, optional: false, nullable: true
    end
  end
end
