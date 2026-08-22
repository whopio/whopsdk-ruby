# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class UpdateAdGroupsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :audiences, -> { Whop_sdk::Types::AdGroupAudiencesBody }, optional: true, nullable: false

        field :bid_type, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestBidType }, optional: true, nullable: false

        field :budget_amount, -> { Integer }, optional: true, nullable: false

        field :budget_type, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestBudgetType }, optional: true, nullable: false

        field :conversion_event, -> { Whop_sdk::Types::ConversionEvent }, optional: true, nullable: false

        field :conversion_location, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestConversionLocation }, optional: true, nullable: false

        field :demographics, -> { Whop_sdk::Types::AdGroupDemographicsBody }, optional: true, nullable: false

        field :desired_cost_per_result, -> { Integer }, optional: true, nullable: false

        field :detailed_targeting, -> { Whop_sdk::Types::AdGroupDetailedTargetingBody }, optional: true, nullable: false

        field :devices, -> { Whop_sdk::Types::AdGroupDevicesBody }, optional: true, nullable: false

        field :ends_at, -> { String }, optional: true, nullable: false

        field :frequency_cap, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestFrequencyCap }, optional: true, nullable: false

        field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :message_apps, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestMessageAppsItem] }, optional: true, nullable: false

        field :minimum_daily_spend, -> { Integer }, optional: true, nullable: false

        field :optimization_goal, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestOptimizationGoal }, optional: true, nullable: false

        field :placements, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestPlacements }, optional: true, nullable: false

        field :regions, -> { Whop_sdk::Types::AdGroupRegionsBody }, optional: true, nullable: false

        field :starts_at, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestStatus }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
