# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class ListAdGroupsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AdGroup] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AdGroups::Types::ListAdGroupsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
