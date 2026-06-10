# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#list
    class AdCampaignListResponse < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute click_through_rate
      #   Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      #
      #   @return [Float]
      required :click_through_rate, Float

      # @!attribute clicks
      #   Total clicks on the campaign's ads in the stats window.
      #
      #   @return [Integer]
      required :clicks, Integer

      # @!attribute cost_per_click
      #   Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      #
      #   @return [Float]
      required :cost_per_click, Float

      # @!attribute cost_per_lead
      #   Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      #   tracked but none happened yet; null when leads are not a goal and none were
      #   attributed.
      #
      #   @return [Float, nil]
      required :cost_per_lead, Float, nil?: true

      # @!attribute cost_per_mille
      #   Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      #   are no impressions.
      #
      #   @return [Float]
      required :cost_per_mille, Float

      # @!attribute cost_per_purchase
      #   Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when
      #   purchases are tracked but none happened yet; null when purchases are not a goal
      #   and none were attributed.
      #
      #   @return [Float, nil]
      required :cost_per_purchase, Float, nil?: true

      # @!attribute cost_per_result
      #   Cost in dollars per optimization result (spend / results). 0 when a result is
      #   being optimized for but none happened yet; null when nothing is being optimized
      #   for.
      #
      #   @return [Float, nil]
      required :cost_per_result, Float, nil?: true

      # @!attribute created_at
      #   When the ad campaign was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute frequency
      #   Average number of times each person saw an ad (impressions / reach), as reported
      #   by the platform.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute impressions
      #   Total impressions (views) on the campaign's ads in the stats window.
      #
      #   @return [Integer]
      required :impressions, Integer

      # @!attribute issues
      #   Open platform issues affecting this campaign and its descendant ad groups and
      #   ads, deduplicated per object. Empty when there are none.
      #
      #   @return [Array<WhopSDK::Models::AdCampaignListResponse::Issue>]
      required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdCampaignListResponse::Issue] }

      # @!attribute leads
      #   Number of Whop pixel-attributed leads (last-click) in the stats window.
      #
      #   @return [Integer]
      required :leads, Integer

      # @!attribute platform
      #   The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignPlatform]
      required :platform, enum: -> { WhopSDK::AdCampaignPlatform }

      # @!attribute purchase_value
      #   Total USD value of Whop pixel-attributed purchases in the stats window.
      #
      #   @return [Float]
      required :purchase_value, Float

      # @!attribute purchases
      #   Number of Whop pixel-attributed purchases (last-click) in the stats window.
      #
      #   @return [Integer]
      required :purchases, Integer

      # @!attribute reach
      #   Unique users reached in the stats window (deduplicated by the platform).
      #
      #   @return [Integer]
      required :reach, Integer

      # @!attribute return_on_ad_spend
      #   Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
      #   attributed purchase value per $1 spent. 0 when there is no spend.
      #
      #   @return [Float]
      required :return_on_ad_spend, Float

      # @!attribute spend
      #   Amount charged in dollars in the stats window.
      #
      #   @return [Float]
      required :spend, Float

      # @!attribute spend_currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :spend_currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute status
      #   Current status of the campaign.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignStatus]
      required :status, enum: -> { WhopSDK::AdCampaignStatus }

      # @!attribute title
      #   The campaign name shown in the Whop dashboard.
      #
      #   @return [String]
      required :title, String

      # @!attribute unique_click_through_rate
      #   Unique click-through rate as a fraction of impressions (unique clicks /
      #   impressions, 0–1).
      #
      #   @return [Float, nil]
      required :unique_click_through_rate, Float, nil?: true

      # @!attribute unique_clicks
      #   Unique clicks (deduplicated by the platform) in the stats window.
      #
      #   @return [Integer]
      required :unique_clicks, Integer

      # @!attribute updated_at
      #   When the ad campaign was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, budget:, budget_type:, click_through_rate:, clicks:, cost_per_click:, cost_per_lead:, cost_per_mille:, cost_per_purchase:, cost_per_result:, created_at:, frequency:, impressions:, issues:, leads:, platform:, purchase_value:, purchases:, reach:, return_on_ad_spend:, spend:, spend_currency:, status:, title:, unique_click_through_rate:, unique_clicks:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignListResponse} for more details.
      #
      #   An advertising campaign running on an external platform or within Whop.
      #
      #   @param id [String] The unique identifier for this ad campaign.
      #
      #   @param budget [Float, nil] Total budget in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param click_through_rate [Float] Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      #
      #   @param clicks [Integer] Total clicks on the campaign's ads in the stats window.
      #
      #   @param cost_per_click [Float] Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      #
      #   @param cost_per_lead [Float, nil] Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      #
      #   @param cost_per_mille [Float] Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      #
      #   @param cost_per_purchase [Float, nil] Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when p
      #
      #   @param cost_per_result [Float, nil] Cost in dollars per optimization result (spend / results). 0 when a result is be
      #
      #   @param created_at [Time] When the ad campaign was created.
      #
      #   @param frequency [Float, nil] Average number of times each person saw an ad (impressions / reach), as reported
      #
      #   @param impressions [Integer] Total impressions (views) on the campaign's ads in the stats window.
      #
      #   @param issues [Array<WhopSDK::Models::AdCampaignListResponse::Issue>] Open platform issues affecting this campaign and its descendant ad groups and ad
      #
      #   @param leads [Integer] Number of Whop pixel-attributed leads (last-click) in the stats window.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignPlatform] The external ad platform this campaign is running on (e.g., meta, tiktok).
      #
      #   @param purchase_value [Float] Total USD value of Whop pixel-attributed purchases in the stats window.
      #
      #   @param purchases [Integer] Number of Whop pixel-attributed purchases (last-click) in the stats window.
      #
      #   @param reach [Integer] Unique users reached in the stats window (deduplicated by the platform).
      #
      #   @param return_on_ad_spend [Float] Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of attri
      #
      #   @param spend [Float] Amount charged in dollars in the stats window.
      #
      #   @param spend_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignStatus] Current status of the campaign.
      #
      #   @param title [String] The campaign name shown in the Whop dashboard.
      #
      #   @param unique_click_through_rate [Float, nil] Unique click-through rate as a fraction of impressions (unique clicks / impressi
      #
      #   @param unique_clicks [Integer] Unique clicks (deduplicated by the platform) in the stats window.
      #
      #   @param updated_at [Time] When the ad campaign was last updated.

      class Issue < WhopSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Whop's canonical category that a raw platform issue is bucketed into.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Issue::Category, nil]
        required :category, enum: -> { WhopSDK::Models::AdCampaignListResponse::Issue::Category }, nil?: true

        # @!attribute created_at
        #   When the issue was first reported.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute resolution_status
        #   Current resolution status.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus]
        required :resolution_status, enum: -> { WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus }

        # @!attribute resource_id
        #   The Whop ID of the ad object this issue is on (the ad, ad group, or campaign).
        #   Null when the issue isn't tied to a local object.
        #
        #   @return [String, nil]
        required :resource_id, String, nil?: true

        # @!attribute resource_type
        #   The kind of ad object this issue is on: `ad`, `ad_group`, or `ad_campaign`.
        #   Pairs with `resourceId`.
        #
        #   @return [String]
        required :resource_type, String

        # @!attribute subtype
        #   Finer-grained sub-bucket within the category (e.g. the specific Meta policy for
        #   a rejection).
        #
        #   @return [String, nil]
        required :subtype, String, nil?: true

        # @!method initialize(category:, created_at:, resolution_status:, resource_id:, resource_type:, subtype:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignListResponse::Issue} for more details.
        #
        #   A platform-reported issue on an ad object (rejection, policy flag, etc.).
        #
        #   @param category [Symbol, WhopSDK::Models::AdCampaignListResponse::Issue::Category, nil] Whop's canonical category that a raw platform issue is bucketed into.
        #
        #   @param created_at [Time] When the issue was first reported.
        #
        #   @param resolution_status [Symbol, WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus] Current resolution status.
        #
        #   @param resource_id [String, nil] The Whop ID of the ad object this issue is on (the ad, ad group, or campaign). N
        #
        #   @param resource_type [String] The kind of ad object this issue is on: `ad`, `ad_group`, or `ad_campaign`. Pair
        #
        #   @param subtype [String, nil] Finer-grained sub-bucket within the category (e.g. the specific Meta policy for

        # Whop's canonical category that a raw platform issue is bucketed into.
        #
        # @see WhopSDK::Models::AdCampaignListResponse::Issue#category
        module Category
          extend WhopSDK::Internal::Type::Enum

          POLICY_REJECTION = :policy_rejection
          CREATIVE_MEDIA = :creative_media
          AUDIENCE_TARGETING = :audience_targeting
          AD_VOLUME_LIMIT = :ad_volume_limit

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current resolution status.
        #
        # @see WhopSDK::Models::AdCampaignListResponse::Issue#resolution_status
        module ResolutionStatus
          extend WhopSDK::Internal::Type::Enum

          OPEN = :open
          RESOLVED = :resolved
          ACKNOWLEDGED = :acknowledged

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
