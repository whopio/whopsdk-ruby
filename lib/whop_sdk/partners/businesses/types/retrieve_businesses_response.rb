# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class RetrieveBusinessesResponse < Internal::Types::Model
          field :account, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseAccount }, optional: false, nullable: true

          field :blueprint_partner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseBlueprintPartner }, optional: false, nullable: true

          field :commission_advance, -> { Whop_sdk::Types::PartnerAdvance }, optional: true, nullable: false

          field :commission_advance_cap, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

          field :commission_advance_projections_allowed, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :commission_advance_rate, -> { String }, optional: true, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false

          field :deal_closed_reason, -> { String }, optional: false, nullable: true

          field :earnings_usd, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseEarningsUsd }, optional: false, nullable: false

          field :first_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseFirstTierPartner }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :my_partner_tier, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseMyPartnerTier }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseObject }, optional: false, nullable: false

          field :owner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseOwner }, optional: false, nullable: true

          field :payout_percentages, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponsePayoutPercentages }, optional: false, nullable: false

          field :pending_owner_invites, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponsePendingOwnerInvitesItem] }, optional: true, nullable: false

          field :referral_expires_at, -> { String }, optional: false, nullable: true

          field :referral_started_at, -> { String }, optional: false, nullable: true

          field :referring_business, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseReferringBusiness }, optional: true, nullable: false

          field :second_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseSecondTierPartner }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseStatus }, optional: false, nullable: false

          field :volume_usd, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseVolumeUsd }, optional: false, nullable: false
        end
      end
    end
  end
end
