# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class UpdateAdCampaignsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :bid_type, -> { Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBidType }, optional: true, nullable: false

        field :budget_amount, -> { Integer }, optional: true, nullable: false

        field :budget_optimization, -> { Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBudgetOptimization }, optional: true, nullable: false

        field :budget_type, -> { Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBudgetType }, optional: true, nullable: false

        field :ends_at, -> { String }, optional: true, nullable: false

        field :special_ad_categories, -> { Internal::Types::Array[Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestSpecialAdCategoriesItem] }, optional: true, nullable: false

        field :starts_at, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestStatus }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
