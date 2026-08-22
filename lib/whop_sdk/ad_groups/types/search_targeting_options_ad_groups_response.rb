# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class SearchTargetingOptionsAdGroupsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::TargetingOption] }, optional: false, nullable: false
      end
    end
  end
end
