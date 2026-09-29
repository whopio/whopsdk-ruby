# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class LeaderboardPartnersResponse < Internal::Types::Model
        field :leaders, -> { Internal::Types::Array[Whop_sdk::Partners::Types::LeaderboardPartnersResponseLeadersItem] }, optional: false, nullable: false

        field :me, -> { Whop_sdk::Partners::Types::LeaderboardPartnersResponseMe }, optional: false, nullable: true

        field :nearby, -> { Internal::Types::Array[Whop_sdk::Partners::Types::LeaderboardPartnersResponseNearbyItem] }, optional: false, nullable: false
      end
    end
  end
end
