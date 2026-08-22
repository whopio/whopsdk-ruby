# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      class ListBountiesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::BountyListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Bounties::Types::ListBountiesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
