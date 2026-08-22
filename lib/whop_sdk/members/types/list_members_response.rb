# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class ListMembersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Member] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Members::Types::ListMembersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
