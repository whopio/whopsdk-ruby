# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class LeaderboardPartnersResponseLeadersItem < Internal::Types::Model
        field :first_referral_started_at, -> { String }, optional: false, nullable: false

        field :rank, -> { Integer }, optional: false, nullable: false

        field :total_earnings_usd, -> { String }, optional: false, nullable: false

        field :total_volume_usd, -> { String }, optional: false, nullable: false

        field :user, -> { Whop_sdk::Partners::Types::LeaderboardPartnersResponseLeadersItemUser }, optional: false, nullable: true
      end
    end
  end
end
