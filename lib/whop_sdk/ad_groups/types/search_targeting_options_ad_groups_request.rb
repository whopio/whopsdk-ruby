# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class SearchTargetingOptionsAdGroupsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestPlatform }, optional: false, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :types, -> { Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestTypesItem }, optional: true, nullable: false

        field :location_types, -> { Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestLocationTypesItem }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
