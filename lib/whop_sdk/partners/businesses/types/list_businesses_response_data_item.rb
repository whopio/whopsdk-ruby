# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ListBusinessesResponseDataItem < Internal::Types::Model
          field :account, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemAccount }, optional: false, nullable: true

          field :created_at, -> { String }, optional: false, nullable: false

          field :earnings_usd, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemEarningsUsd }, optional: false, nullable: false

          field :first_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemFirstTierPartner }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :my_partner_tier, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemMyPartnerTier }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemObject }, optional: false, nullable: false

          field :owner, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemOwner }, optional: false, nullable: true

          field :payout_percentages, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemPayoutPercentages }, optional: false, nullable: false

          field :referral_expires_at, -> { String }, optional: false, nullable: true

          field :referral_started_at, -> { String }, optional: false, nullable: true

          field :second_tier_partner, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemSecondTierPartner }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemStatus }, optional: false, nullable: false

          field :volume_usd, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItemVolumeUsd }, optional: false, nullable: false
        end
      end
    end
  end
end
