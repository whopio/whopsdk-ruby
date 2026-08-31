# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#update
    class AdCampaignUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute bid_type
      #   How delivery bids in the ad auction: `minimum_cost` gets the most results for
      #   the budget, `average_target` holds an average cost per result, `maximum_target`
      #   never bids above a cap. Switching to `minimum_cost` clears the cap amounts
      #   stored on the campaign's ad groups. Only for campaigns that own the budget.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType, nil]
      optional :bid_type, enum: -> { WhopSDK::AdCampaignUpdateParams::BidType }

      # @!attribute budget_amount
      #   The campaign budget, in the account's currency. Interpreted as daily or lifetime
      #   per the campaign's budget type, including a budget_type sent in the same
      #   request.
      #
      #   @return [Float, nil]
      optional :budget_amount, Float

      # @!attribute budget_optimization
      #   Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      #   individually (`ad_group`). Only changeable before the campaign is live on the ad
      #   network; switching to `ad_campaign` requires budget_amount in the same request,
      #   and switching to `ad_group` clears the campaign budget.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization, nil]
      optional :budget_optimization, enum: -> { WhopSDK::AdCampaignUpdateParams::BudgetOptimization }

      # @!attribute budget_type
      #   Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      #   run (`lifetime`). Only changeable while the campaign is a draft; send
      #   budget_amount in the same request so the amount lands on the new type.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdCampaignUpdateParams::BudgetType }

      # @!attribute ends_at
      #   When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns
      #   that own the budget.
      #
      #   @return [String, nil]
      optional :ends_at, String

      # @!attribute special_ad_categories
      #   Regulated categories the campaign falls under. Editable on any campaign, draft
      #   or launched; pass an empty array to clear.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdCampaignUpdateParams::SpecialAdCategory>, nil]
      optional :special_ad_categories,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaignUpdateParams::SpecialAdCategory] }

      # @!attribute starts_at
      #   When the campaign starts delivering, as an ISO 8601 timestamp. Only for
      #   campaigns that own the budget.
      #
      #   @return [String, nil]
      optional :starts_at, String

      # @!attribute status
      #   Set to active to launch a draft campaign (moderates and pushes it live).
      #   Live-campaign pause and resume use the pause and unpause actions.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdCampaignUpdateParams::Status }

      # @!attribute title
      #   The name of the campaign.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, bid_type: nil, budget_amount: nil, budget_optimization: nil, budget_type: nil, ends_at: nil, special_ad_categories: nil, starts_at: nil, status: nil, title: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType] How delivery bids in the ad auction: `minimum_cost` gets the most results for th
      #
      #   @param budget_amount [Float] The campaign budget, in the account's currency. Interpreted as daily or lifetime
      #
      #   @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization] Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetType] Whether `budget_amount` is spent per day (`daily`) or over the campaign's full r
      #
      #   @param ends_at [String] When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns
      #
      #   @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaignUpdateParams::SpecialAdCategory>] Regulated categories the campaign falls under. Editable on any campaign, draft o
      #
      #   @param starts_at [String] When the campaign starts delivering, as an ISO 8601 timestamp. Only for campaign
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignUpdateParams::Status] Set to active to launch a draft campaign (moderates and pushes it live). Live-ca
      #
      #   @param title [String] The name of the campaign.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # How delivery bids in the ad auction: `minimum_cost` gets the most results for
      # the budget, `average_target` holds an average cost per result, `maximum_target`
      # never bids above a cap. Switching to `minimum_cost` clears the cap amounts
      # stored on the campaign's ad groups. Only for campaigns that own the budget.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      # individually (`ad_group`). Only changeable before the campaign is live on the ad
      # network; switching to `ad_campaign` requires budget_amount in the same request,
      # and switching to `ad_group` clears the campaign budget.
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        AD_CAMPAIGN = :ad_campaign
        AD_GROUP = :ad_group

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      # run (`lifetime`). Only changeable while the campaign is a draft; send
      # budget_amount in the same request so the amount lands on the new type.
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

      # Set to active to launch a draft campaign (moderates and pushes it live).
      # Live-campaign pause and resume use the pause and unpause actions.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
