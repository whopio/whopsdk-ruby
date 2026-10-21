# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ResendInviteBusinessesResponse < Internal::Types::Model
          field :account, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseAccount }, optional: false, nullable: true

          field :blueprint_partner, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseBlueprintPartner }, optional: false, nullable: true

          field :commission_advance, -> { Whop_sdk::Types::PartnerAdvance }, optional: true, nullable: false

          field :commission_advance_projections_allowed, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false

          field :deal_closed_reason, -> { String }, optional: false, nullable: true

          field :earnings_usd, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseEarningsUsd }, optional: false, nullable: false

          field :first_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseFirstTierPartner }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :my_partner_tier, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseMyPartnerTier }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseObject }, optional: false, nullable: false

          field :owner, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseOwner }, optional: false, nullable: true

          field :payout_percentages, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponsePayoutPercentages }, optional: false, nullable: false

          field :pending_owner_invites, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponsePendingOwnerInvitesItem] }, optional: true, nullable: false

          field :referral_expires_at, -> { String }, optional: false, nullable: true

          field :referral_started_at, -> { String }, optional: false, nullable: true

          field :second_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseSecondTierPartner }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseStatus }, optional: false, nullable: false

          field :volume_usd, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseVolumeUsd }, optional: false, nullable: false
        end
      end
    end
  end
end
