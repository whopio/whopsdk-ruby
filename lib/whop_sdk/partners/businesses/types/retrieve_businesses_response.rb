# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class RetrieveBusinessesResponse < Internal::Types::Model
          field :account, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseAccount }, optional: false, nullable: true

          field :created_at, -> { String }, optional: false, nullable: false

          field :earnings_usd, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseEarningsUsd }, optional: false, nullable: false

          field :first_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseFirstTierPartner }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :my_partner_tier, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseMyPartnerTier }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseObject }, optional: false, nullable: false

          field :owner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseOwner }, optional: false, nullable: true

          field :payout_percentages, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponsePayoutPercentages }, optional: false, nullable: false

          field :referral_expires_at, -> { String }, optional: false, nullable: true

          field :referral_started_at, -> { String }, optional: false, nullable: true

          field :second_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseSecondTierPartner }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseStatus }, optional: false, nullable: false

          field :volume_usd, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseVolumeUsd }, optional: false, nullable: false
        end
      end
    end
  end
end
