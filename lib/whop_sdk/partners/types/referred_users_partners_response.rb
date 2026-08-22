# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Partners::Types::ReferredUsersPartnersResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
