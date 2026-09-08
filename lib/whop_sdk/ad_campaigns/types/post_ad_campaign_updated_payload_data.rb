# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class PostAdCampaignUpdatedPayloadData < Internal::Types::Model
        field :bid_type, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataBidType }, optional: true, nullable: false

        field :budget_amount, -> { Integer }, optional: false, nullable: true

        field :budget_optimization, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataBudgetOptimization }, optional: false, nullable: true

        field :budget_type, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataBudgetType }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :delivery_status, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataDeliveryStatus }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :issues, -> { Internal::Types::Array[Whop_sdk::Types::AdPlatformIssue] }, optional: false, nullable: false

        field :objective, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataObjective }, optional: false, nullable: true

        field :optimization_goal, -> { String }, optional: false, nullable: true

        field :platform, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataPlatform }, optional: false, nullable: false

        field :special_ad_categories, -> { Internal::Types::Array[Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataSpecialAdCategoriesItem] }, optional: false, nullable: false

        field :status, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignUpdatedPayloadDataStatus }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
