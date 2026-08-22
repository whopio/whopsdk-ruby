# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class ListMembershipsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Membership] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Memberships::Types::ListMembershipsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
