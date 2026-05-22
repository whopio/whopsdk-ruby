# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#retrieve
    class AdCampaign < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad campaign.
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   Total budget in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdBudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::AdBudgetType }, nil?: true

      # @!attribute created_at
      #   When the ad campaign was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by_user
      #   The user who created this ad campaign.
      #
      #   @return [WhopSDK::Models::AdCampaign::CreatedByUser]
      required :created_by_user, -> { WhopSDK::AdCampaign::CreatedByUser }

      # @!attribute meta_config
      #   Meta-specific campaign configuration (objective, budget mode, etc.). Null for
      #   non-Meta campaigns.
      #
      #   @return [WhopSDK::Models::AdCampaign::MetaConfig, nil]
      required :meta_config, -> { WhopSDK::AdCampaign::MetaConfig }, nil?: true

      # @!attribute platform
      #   The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignPlatform]
      required :platform, enum: -> { WhopSDK::AdCampaignPlatform }

      # @!attribute status
      #   Current status of the campaign (active, paused, or inactive).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignStatus]
      required :status, enum: -> { WhopSDK::AdCampaignStatus }

      # @!attribute title
      #   The campaign name shown in the Whop dashboard.
      #
      #   @return [String]
      required :title, String

      # @!attribute total_spend
      #   Total amount spent in dollars.
      #
      #   @return [Float]
      required :total_spend, Float

      # @!attribute updated_at
      #   When the ad campaign was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, budget:, budget_type:, created_at:, created_by_user:, meta_config:, platform:, status:, title:, total_spend:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaign} for more details.
      #
      #   An advertising campaign running on an external platform or within Whop.
      #
      #   @param id [String] The unique identifier for this ad campaign.
      #
      #   @param budget [Float, nil] Total budget in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param created_at [Time] When the ad campaign was created.
      #
      #   @param created_by_user [WhopSDK::Models::AdCampaign::CreatedByUser] The user who created this ad campaign.
      #
      #   @param meta_config [WhopSDK::Models::AdCampaign::MetaConfig, nil] Meta-specific campaign configuration (objective, budget mode, etc.). Null for no
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignPlatform] The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignStatus] Current status of the campaign (active, paused, or inactive).
      #
      #   @param title [String] The campaign name shown in the Whop dashboard.
      #
      #   @param total_spend [Float] Total amount spent in dollars.
      #
      #   @param updated_at [Time] When the ad campaign was last updated.

      # @see WhopSDK::Models::AdCampaign#created_by_user
      class CreatedByUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who created this ad campaign.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end

      # @see WhopSDK::Models::AdCampaign#meta_config
      class MetaConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute bid_amount
        #   Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @return [Integer, nil]
        required :bid_amount, Integer, nil?: true

        # @!attribute bid_strategy
        #   The bidding strategy used to optimize spend for this campaign.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::BidStrategy, nil]
        required :bid_strategy, enum: -> { WhopSDK::AdCampaign::MetaConfig::BidStrategy }, nil?: true

        # @!attribute budget_optimization
        #   Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #   distribute budget across ad groups.
        #
        #   @return [Boolean, nil]
        required :budget_optimization, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute effective_status
        #   The actual delivery status, accounting for platform overrides (e.g., in_review,
        #   rejected).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::EffectiveStatus, nil]
        required :effective_status, enum: -> { WhopSDK::AdCampaign::MetaConfig::EffectiveStatus }, nil?: true

        # @!attribute end_time
        #   The scheduled end time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        required :end_time, String, nil?: true

        # @!attribute objective
        #   The campaign objective that determines how Meta optimizes delivery.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::Objective, nil]
        required :objective, enum: -> { WhopSDK::AdCampaign::MetaConfig::Objective }, nil?: true

        # @!attribute special_categories
        #   Special ad categories required by the platform (e.g., housing, employment,
        #   credit).
        #
        #   @return [Array<String>, nil]
        required :special_categories, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute start_time
        #   The scheduled start time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        required :start_time, String, nil?: true

        # @!attribute status
        #   The campaign status as set by the advertiser (active or paused).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::Status, nil]
        required :status, enum: -> { WhopSDK::AdCampaign::MetaConfig::Status }, nil?: true

        # @!method initialize(bid_amount:, bid_strategy:, budget_optimization:, effective_status:, end_time:, objective:, special_categories:, start_time:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaign::MetaConfig} for more details.
        #
        #   Meta-specific campaign configuration (objective, budget mode, etc.). Null for
        #   non-Meta campaigns.
        #
        #   @param bid_amount [Integer, nil] Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @param bid_strategy [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::BidStrategy, nil] The bidding strategy used to optimize spend for this campaign.
        #
        #   @param budget_optimization [Boolean, nil] Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #
        #   @param effective_status [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::EffectiveStatus, nil] The actual delivery status, accounting for platform overrides (e.g., in_review,
        #
        #   @param end_time [String, nil] The scheduled end time of the campaign (ISO8601).
        #
        #   @param objective [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::Objective, nil] The campaign objective that determines how Meta optimizes delivery.
        #
        #   @param special_categories [Array<String>, nil] Special ad categories required by the platform (e.g., housing, employment, credi
        #
        #   @param start_time [String, nil] The scheduled start time of the campaign (ISO8601).
        #
        #   @param status [Symbol, WhopSDK::Models::AdCampaign::MetaConfig::Status, nil] The campaign status as set by the advertiser (active or paused).

        # The bidding strategy used to optimize spend for this campaign.
        #
        # @see WhopSDK::Models::AdCampaign::MetaConfig#bid_strategy
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          LOWEST_COST = :lowest_cost
          BID_CAP = :bid_cap
          COST_CAP = :cost_cap

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The actual delivery status, accounting for platform overrides (e.g., in_review,
        # rejected).
        #
        # @see WhopSDK::Models::AdCampaign::MetaConfig#effective_status
        module EffectiveStatus
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused
          DELETED = :deleted
          IN_REVIEW = :in_review
          REJECTED = :rejected
          WITH_ISSUES = :with_issues

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The campaign objective that determines how Meta optimizes delivery.
        #
        # @see WhopSDK::Models::AdCampaign::MetaConfig#objective
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

        # The campaign status as set by the advertiser (active or paused).
        #
        # @see WhopSDK::Models::AdCampaign::MetaConfig#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
