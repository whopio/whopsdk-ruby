# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersResponseDataItem < Internal::Types::Model
        field :business_count, -> { Integer }, optional: false, nullable: false

        field :earnings, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :joined_at, -> { String }, optional: false, nullable: false

        field :total_earnings_usd, -> { String }, optional: false, nullable: false

        field :total_volume_usd, -> { String }, optional: false, nullable: false

        field :user, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersResponseDataItemUser }, optional: false, nullable: false

        field :volume30d, -> { Whop_sdk::Types::Money }, optional: false, nullable: false, api_name: "volume_30d"
      end
    end
  end
end
