# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class LeaderboardPartnersResponse < Internal::Types::Model
        field :leaders, -> { Internal::Types::Array[Whop_sdk::Partners::Types::LeaderboardPartnersResponseLeadersItem] }, optional: false, nullable: false

        field :me, -> { Whop_sdk::Partners::Types::LeaderboardPartnersResponseMe }, optional: false, nullable: true
      end
    end
  end
end
