# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersResponseDataItem < Internal::Types::Model
        field :total_earnings_usd, -> { String }, optional: false, nullable: false

        field :total_volume_usd, -> { String }, optional: false, nullable: false

        field :user, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersResponseDataItemUser }, optional: false, nullable: false
      end
    end
  end
end
