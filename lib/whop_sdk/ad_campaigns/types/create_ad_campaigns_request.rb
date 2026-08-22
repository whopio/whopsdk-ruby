# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class CreateAdCampaignsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :bid_type, -> { Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBidType }, optional: true, nullable: false

        field :budget_amount, -> { Integer }, optional: true, nullable: false

        field :budget_optimization, -> { Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBudgetOptimization }, optional: true, nullable: false

        field :budget_type, -> { Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBudgetType }, optional: true, nullable: false

        field :desired_cost_per_result, -> { Integer }, optional: true, nullable: false

        field :ends_at, -> { String }, optional: true, nullable: false

        field :objective, -> { Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestObjective }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestPlatform }, optional: false, nullable: false

        field :special_ad_categories, -> { Internal::Types::Array[Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestSpecialAdCategoriesItem] }, optional: true, nullable: false

        field :starts_at, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
