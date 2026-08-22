# frozen_string_literal: true

module Whop_sdk
  module IdentityProfiles
    module Types
      # The connection type for Verification.
      class ListVerificationsIdentityProfileResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::IdentityProfiles::Types::ListVerificationsIdentityProfileResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
