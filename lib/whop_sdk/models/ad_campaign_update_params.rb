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
      #   CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      #   maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
      #   stored on the campaign's ad groups. CBO only.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType, nil]
      optional :bid_type, enum: -> { WhopSDK::AdCampaignUpdateParams::BidType }

      # @!attribute budget_amount
      #   The campaign budget, in the account's currency. Interpreted as daily or lifetime
      #   per the campaign's existing budget type.
      #
      #   @return [Float, nil]
      optional :budget_amount, Float

      # @!attribute budget_optimization
      #   Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
      #   changeable before the campaign is live on Meta; switching to ad_campaign
      #   requires budget_amount in the same request, and switching to ad_group clears the
      #   campaign budget.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization, nil]
      optional :budget_optimization, enum: -> { WhopSDK::AdCampaignUpdateParams::BudgetOptimization }

      # @!attribute ends_at
      #   Campaign schedule end (ISO 8601). CBO only.
      #
      #   @return [String, nil]
      optional :ends_at, String

      # @!attribute starts_at
      #   Campaign schedule start (ISO 8601). CBO only.
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

      # @!method initialize(id:, bid_type: nil, budget_amount: nil, budget_optimization: nil, ends_at: nil, starts_at: nil, status: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType] CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or maxi
      #
      #   @param budget_amount [Float] The campaign budget, in the account's currency. Interpreted as daily or lifetime
      #
      #   @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization] Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only ch
      #
      #   @param ends_at [String] Campaign schedule end (ISO 8601). CBO only.
      #
      #   @param starts_at [String] Campaign schedule start (ISO 8601). CBO only.
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignUpdateParams::Status] Set to active to launch a draft campaign (moderates and pushes it live). Live-ca
      #
      #   @param title [String] The name of the campaign.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
      # stored on the campaign's ad groups. CBO only.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
      # changeable before the campaign is live on Meta; switching to ad_campaign
      # requires budget_amount in the same request, and switching to ad_group clears the
      # campaign budget.
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        AD_CAMPAIGN = :ad_campaign
        AD_GROUP = :ad_group

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
