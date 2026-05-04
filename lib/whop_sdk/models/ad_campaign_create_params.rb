# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#create
    class AdCampaignCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The company ID to create this ad campaign for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute config
      #   Unified campaign configuration (conversion goal, budget, bidding, etc.).
      #
      #   @return [WhopSDK::Models::AdCampaignCreateParams::Config]
      required :config, -> { WhopSDK::AdCampaignCreateParams::Config }

      # @!attribute platform
      #   The ad platform to run on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform]
      required :platform, enum: -> { WhopSDK::AdCampaignCreateParams::Platform }

      # @!attribute title
      #   The title of the ad campaign. Must be max 100 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute ad_creative_set_ids
      #   Array of creative set IDs to link to this campaign.
      #
      #   @return [Array<String>, nil]
      optional :ad_creative_set_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      optional :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdCampaignCreateParams::BudgetType }, nil?: true

      # @!attribute daily_budget
      #   Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
      #   config.
      #
      #   @return [Float, nil]
      optional :daily_budget, Float, nil?: true

      # @!attribute product_id
      #   The unique identifier of the product to promote.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute target_country_codes
      #   Array of ISO3166 country codes for territory targeting.
      #
      #   @return [Array<String>, nil]
      optional :target_country_codes, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(company_id:, config:, platform:, title:, ad_creative_set_ids: nil, budget: nil, budget_type: nil, daily_budget: nil, product_id: nil, target_country_codes: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignCreateParams} for more details.
      #
      #   @param company_id [String] The company ID to create this ad campaign for.
      #
      #   @param config [WhopSDK::Models::AdCampaignCreateParams::Config] Unified campaign configuration (conversion goal, budget, bidding, etc.).
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform] The ad platform to run on (e.g., meta, tiktok).
      #
      #   @param title [String] The title of the ad campaign. Must be max 100 characters.
      #
      #   @param ad_creative_set_ids [Array<String>, nil] Array of creative set IDs to link to this campaign.
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param daily_budget [Float, nil] Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
      #
      #   @param product_id [String, nil] The unique identifier of the product to promote.
      #
      #   @param target_country_codes [Array<String>, nil] Array of ISO3166 country codes for territory targeting.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Config < WhopSDK::Internal::Type::BaseModel
        # @!attribute bid_amount
        #   Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @return [Integer, nil]
        optional :bid_amount, Integer, nil?: true

        # @!attribute bid_strategy
        #   The bidding strategy used to optimize spend for this campaign.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::BidStrategy, nil]
        optional :bid_strategy, enum: -> { WhopSDK::AdCampaignCreateParams::Config::BidStrategy }, nil?: true

        # @!attribute budget_optimization
        #   Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #   distribute budget across ad groups.
        #
        #   @return [Boolean, nil]
        optional :budget_optimization, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute end_time
        #   The scheduled end time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        optional :end_time, String, nil?: true

        # @!attribute lifetime_budget
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :lifetime_budget, Integer, nil?: true

        # @!attribute objective
        #   The campaign objective that determines how Meta optimizes delivery.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::Objective, nil]
        optional :objective, enum: -> { WhopSDK::AdCampaignCreateParams::Config::Objective }, nil?: true

        # @!attribute special_categories
        #   Special ad categories required by the platform (e.g., housing, employment,
        #   credit).
        #
        #   @return [Array<String>, nil]
        optional :special_categories, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute start_time
        #   The scheduled start time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        optional :start_time, String, nil?: true

        # @!attribute status
        #   The campaign status as set by the advertiser (active or paused).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::Status, nil]
        optional :status, enum: -> { WhopSDK::AdCampaignCreateParams::Config::Status }, nil?: true

        # @!method initialize(bid_amount: nil, bid_strategy: nil, budget_optimization: nil, end_time: nil, lifetime_budget: nil, objective: nil, special_categories: nil, start_time: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignCreateParams::Config} for more details.
        #
        #   Unified campaign configuration (conversion goal, budget, bidding, etc.).
        #
        #   @param bid_amount [Integer, nil] Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @param bid_strategy [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::BidStrategy, nil] The bidding strategy used to optimize spend for this campaign.
        #
        #   @param budget_optimization [Boolean, nil] Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #
        #   @param end_time [String, nil] The scheduled end time of the campaign (ISO8601).
        #
        #   @param lifetime_budget [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param objective [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::Objective, nil] The campaign objective that determines how Meta optimizes delivery.
        #
        #   @param special_categories [Array<String>, nil] Special ad categories required by the platform (e.g., housing, employment, credi
        #
        #   @param start_time [String, nil] The scheduled start time of the campaign (ISO8601).
        #
        #   @param status [Symbol, WhopSDK::Models::AdCampaignCreateParams::Config::Status, nil] The campaign status as set by the advertiser (active or paused).

        # The bidding strategy used to optimize spend for this campaign.
        #
        # @see WhopSDK::Models::AdCampaignCreateParams::Config#bid_strategy
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          LOWEST_COST = :lowest_cost
          BID_CAP = :bid_cap
          COST_CAP = :cost_cap

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The campaign objective that determines how Meta optimizes delivery.
        #
        # @see WhopSDK::Models::AdCampaignCreateParams::Config#objective
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
        # @see WhopSDK::Models::AdCampaignCreateParams::Config#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The ad platform to run on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The budget type for an ad campaign or ad group.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
