# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class PostAdGroupUpdatedPayloadData < Internal::Types::Model
        field :ad_campaign, -> { Whop_sdk::Types::AdEntityReference }, optional: false, nullable: false

        field :audiences, -> { Whop_sdk::Types::AdGroupAudiences }, optional: false, nullable: false

        field :bid_type, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataBidType }, optional: false, nullable: true

        field :budget_amount, -> { Integer }, optional: false, nullable: true

        field :budget_amount_local, -> { Integer }, optional: false, nullable: true

        field :budget_currency, -> { String }, optional: false, nullable: false

        field :budget_type, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataBudgetType }, optional: false, nullable: true

        field :conversion_event, -> { Whop_sdk::Types::ConversionEvent }, optional: false, nullable: true

        field :conversion_location, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataConversionLocation }, optional: true, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :delivery_schedule, -> { Whop_sdk::Types::AdGroupDeliverySchedule }, optional: false, nullable: true

        field :delivery_status, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataDeliveryStatus }, optional: false, nullable: false

        field :demographics, -> { Whop_sdk::Types::AdGroupDemographics }, optional: false, nullable: false

        field :desired_cost_per_result, -> { Integer }, optional: false, nullable: true

        field :detailed_targeting, -> { Whop_sdk::Types::AdGroupDetailedTargeting }, optional: false, nullable: false

        field :devices, -> { Whop_sdk::Types::AdGroupDevices }, optional: false, nullable: false

        field :dynamic_creative, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :ends_at, -> { String }, optional: false, nullable: true

        field :frequency_cap, -> { Whop_sdk::Types::AdGroupFrequencyCap }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :issues, -> { Internal::Types::Array[Whop_sdk::Types::AdPlatformIssue] }, optional: false, nullable: false

        field :keywords, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupKeyword] }, optional: true, nullable: false

        field :languages, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :learning_progress, -> { Whop_sdk::Types::AdGroupLearningProgress }, optional: false, nullable: true

        field :message_apps, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataMessageAppsItem] }, optional: true, nullable: false

        field :minimum_daily_spend, -> { Integer }, optional: true, nullable: false

        field :optimization_goal, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataOptimizationGoal }, optional: false, nullable: true

        field :placements, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupPlacement] }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataPlatform }, optional: false, nullable: false

        field :regions, -> { Whop_sdk::Types::AdGroupRegions }, optional: false, nullable: false

        field :starts_at, -> { String }, optional: false, nullable: true

        field :status, -> { Whop_sdk::AdGroups::Types::PostAdGroupUpdatedPayloadDataStatus }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: true

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
