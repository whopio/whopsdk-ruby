# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class PostAdCampaignPaymentFailedPayloadData < Internal::Types::Model
        field :bid_type, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataBidType }, optional: true, nullable: false

        field :budget_amount, -> { Integer }, optional: false, nullable: true

        field :budget_optimization, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataBudgetOptimization }, optional: false, nullable: true

        field :budget_type, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataBudgetType }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :delivery_status, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataDeliveryStatus }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :issues, -> { Internal::Types::Array[Whop_sdk::Types::AdPlatformIssue] }, optional: false, nullable: false

        field :objective, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataObjective }, optional: false, nullable: true

        field :optimization_goal, -> { String }, optional: false, nullable: true

        field :platform, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataPlatform }, optional: false, nullable: false

        field :special_ad_categories, -> { Internal::Types::Array[Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataSpecialAdCategoriesItem] }, optional: false, nullable: false

        field :status, -> { Whop_sdk::AdCampaigns::Types::PostAdCampaignPaymentFailedPayloadDataStatus }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
