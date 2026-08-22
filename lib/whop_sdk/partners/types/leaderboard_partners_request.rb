# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class LeaderboardPartnersRequest < Internal::Types::Model
        field :period, -> { Whop_sdk::Partners::Types::LeaderboardPartnersRequestPeriod }, optional: true, nullable: false
      end
    end
  end
end
