# frozen_string_literal: true

module Whop_sdk
  module IdentityProfiles
    module Types
      # The connection type for IdentityProfile.
      class ListIdentityProfileResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::IdentityProfileListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
