# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class UpdateAdGroupsRequestPlacementsOneItem < Internal::Types::Model
        field :platform, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestPlacementsOneItemPlatform }, optional: false, nullable: false

        field :positions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
