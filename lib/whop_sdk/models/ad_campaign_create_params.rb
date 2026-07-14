# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#create
    class AdCampaignCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute objective
      #   The goal the campaign optimizes toward.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Objective]
      required :objective, enum: -> { WhopSDK::AdCampaignCreateParams::Objective }

      # @!attribute platform
      #   The ad network the campaign runs on.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform]
      required :platform, enum: -> { WhopSDK::AdCampaignCreateParams::Platform }

      # @!attribute title
      #   The title of the campaign.
      #
      #   @return [String]
      required :title, String

      # @!attribute account_id
      #   The account to create the campaign under. Defaults to the account-scoped key's
      #   own account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute bid_type
      #   CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      #   maximum_target (bid cap). CBO only.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::BidType, nil]
      optional :bid_type, enum: -> { WhopSDK::AdCampaignCreateParams::BidType }

      # @!attribute budget_amount
      #   The campaign budget, in USD. Required for CBO (budget_optimization:
      #   ad_campaign); omit for ABO.
      #
      #   @return [Float, nil]
      optional :budget_amount, Float

      # @!attribute budget_optimization
      #   Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      #   Defaults to ad_group.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetOptimization, nil]
      optional :budget_optimization, enum: -> { WhopSDK::AdCampaignCreateParams::BudgetOptimization }

      # @!attribute budget_type
      #   Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      #   daily.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdCampaignCreateParams::BudgetType }

      # @!attribute desired_cost_per_result
      #   Target/cap cost per result in USD for average_target / maximum_target bidding.
      #   CBO only.
      #
      #   @return [Float, nil]
      optional :desired_cost_per_result, Float

      # @!attribute ends_at
      #   Campaign schedule end (ISO 8601). CBO only.
      #
      #   @return [String, nil]
      optional :ends_at, String

      # @!attribute special_ad_categories
      #   Regulated categories the campaign falls under. Ads in these categories are
      #   subject to extra targeting restrictions.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdCampaignCreateParams::SpecialAdCategory>, nil]
      optional :special_ad_categories,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaignCreateParams::SpecialAdCategory] }

      # @!attribute starts_at
      #   Campaign schedule start (ISO 8601). CBO only.
      #
      #   @return [String, nil]
      optional :starts_at, String

      # @!method initialize(objective:, platform:, title:, account_id: nil, bid_type: nil, budget_amount: nil, budget_optimization: nil, budget_type: nil, desired_cost_per_result: nil, ends_at: nil, special_ad_categories: nil, starts_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignCreateParams} for more details.
      #
      #   @param objective [Symbol, WhopSDK::Models::AdCampaignCreateParams::Objective] The goal the campaign optimizes toward.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform] The ad network the campaign runs on.
      #
      #   @param title [String] The title of the campaign.
      #
      #   @param account_id [String] The account to create the campaign under. Defaults to the account-scoped key's o
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BidType] CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or maxi
      #
      #   @param budget_amount [Float] The campaign budget, in USD. Required for CBO (budget_optimization: ad_campaign)
      #
      #   @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetOptimization] Which level owns the budget — the campaign (CBO) or each ad group (ABO). Default
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType] Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      #
      #   @param desired_cost_per_result [Float] Target/cap cost per result in USD for average_target / maximum_target bidding. C
      #
      #   @param ends_at [String] Campaign schedule end (ISO 8601). CBO only.
      #
      #   @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaignCreateParams::SpecialAdCategory>] Regulated categories the campaign falls under. Ads in these categories are subje
      #
      #   @param starts_at [String] Campaign schedule start (ISO 8601). CBO only.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The goal the campaign optimizes toward.
      module Objective
        extend WhopSDK::Internal::Type::Enum

        AWARENESS = :awareness
        TRAFFIC = :traffic
        ENGAGEMENT = :engagement
        LEADS = :leads
        SALES = :sales

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The ad network the campaign runs on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). CBO only.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      # Defaults to ad_group.
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        AD_CAMPAIGN = :ad_campaign
        AD_GROUP = :ad_group

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      # daily.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SpecialAdCategory
        extend WhopSDK::Internal::Type::Enum

        HOUSING = :housing
        EMPLOYMENT = :employment
        FINANCIAL_PRODUCTS = :financial_products
        POLITICS = :politics

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
