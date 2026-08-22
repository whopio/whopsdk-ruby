# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class EstimateReachAdGroupsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :audiences, -> { Whop_sdk::Types::AdGroupAudiencesBody }, optional: true, nullable: false

        field :demographics, -> { Whop_sdk::Types::AdGroupDemographicsBody }, optional: true, nullable: false

        field :detailed_targeting, -> { Whop_sdk::Types::AdGroupDetailedTargetingBody }, optional: true, nullable: false

        field :devices, -> { Whop_sdk::Types::AdGroupDevicesBody }, optional: true, nullable: false

        field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :platform, -> { Whop_sdk::AdGroups::Types::EstimateReachAdGroupsRequestPlatform }, optional: false, nullable: false

        field :regions, -> { Whop_sdk::Types::AdGroupRegionsBody }, optional: true, nullable: false
      end
    end
  end
end
