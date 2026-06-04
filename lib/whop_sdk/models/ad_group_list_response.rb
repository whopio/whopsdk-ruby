# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#list
    class AdGroupListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for this ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The ad campaign this ad group belongs to.
      #
      #   @return [WhopSDK::Models::AdGroupListResponse::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Models::AdGroupListResponse::AdCampaign }

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      required :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdBudgetType, nil]
      required :budget_type, enum: -> { WhopSDK::AdBudgetType }, nil?: true

      # @!attribute clicks
      #   Total clicks on this ad group's ads in the stats window.
      #
      #   @return [Integer]
      required :clicks, Integer

      # @!attribute cost_per_lead
      #   Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      #   tracked but none happened yet; null when leads are not a goal and none were
      #   attributed.
      #
      #   @return [Float, nil]
      required :cost_per_lead, Float, nil?: true

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

      # @!attribute cpc
      #   Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      #
      #   @return [Float]
      required :cpc, Float

      # @!attribute cpm
      #   Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      #   are no impressions.
      #
      #   @return [Float]
      required :cpm, Float

      # @!attribute created_at
      #   When the ad group was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute ctr
      #   Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      #
      #   @return [Float]
      required :ctr, Float

      # @!attribute frequency
      #   Average number of times each person saw an ad (impressions / reach), as reported
      #   by the platform.
      #
      #   @return [Float, nil]
      required :frequency, Float, nil?: true

      # @!attribute impressions
      #   Total impressions (views) on this ad group's ads in the stats window.
      #
      #   @return [Integer]
      required :impressions, Integer

      # @!attribute issues
      #   Open platform issues affecting this ad group and its descendant ads,
      #   deduplicated per object. Empty when there are none.
      #
      #   @return [Array<WhopSDK::Models::AdGroupListResponse::Issue>]
      required :issues, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdGroupListResponse::Issue] }

      # @!attribute leads
      #   Number of Whop pixel-attributed leads (last-click) in the stats window.
      #
      #   @return [Integer]
      required :leads, Integer

      # @!attribute platform
      #   The external ad platform this ad group is running on (e.g., meta, tiktok).
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

      # @!attribute roas
      #   Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
      #   attributed purchase value per $1 spent. 0 when there is no spend.
      #
      #   @return [Float]
      required :roas, Float

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
      #   Current operational status of the ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupStatus]
      required :status, enum: -> { WhopSDK::AdGroupStatus }

      # @!attribute title
      #   The ad group name shown in the Whop dashboard.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute unique_ctr
      #   Unique click-through rate as a fraction of impressions (unique clicks /
      #   impressions, 0–1).
      #
      #   @return [Float, nil]
      required :unique_ctr, Float, nil?: true

      # @!attribute updated_at
      #   When the ad group was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, ad_campaign:, budget:, budget_type:, clicks:, cost_per_lead:, cost_per_purchase:, cost_per_result:, cpc:, cpm:, created_at:, ctr:, frequency:, impressions:, issues:, leads:, platform:, purchase_value:, purchases:, reach:, roas:, spend:, spend_currency:, status:, title:, unique_ctr:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupListResponse} for more details.
      #
      #   An ad group belonging to an ad campaign.
      #
      #   @param id [String] The unique identifier for this ad group.
      #
      #   @param ad_campaign [WhopSDK::Models::AdGroupListResponse::AdCampaign] The ad campaign this ad group belongs to.
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param clicks [Integer] Total clicks on this ad group's ads in the stats window.
      #
      #   @param cost_per_lead [Float, nil] Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      #
      #   @param cost_per_purchase [Float, nil] Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when p
      #
      #   @param cost_per_result [Float, nil] Cost in dollars per optimization result (spend / results). 0 when a result is be
      #
      #   @param cpc [Float] Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      #
      #   @param cpm [Float] Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      #
      #   @param created_at [Time] When the ad group was created.
      #
      #   @param ctr [Float] Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      #
      #   @param frequency [Float, nil] Average number of times each person saw an ad (impressions / reach), as reported
      #
      #   @param impressions [Integer] Total impressions (views) on this ad group's ads in the stats window.
      #
      #   @param issues [Array<WhopSDK::Models::AdGroupListResponse::Issue>] Open platform issues affecting this ad group and its descendant ads, deduplicate
      #
      #   @param leads [Integer] Number of Whop pixel-attributed leads (last-click) in the stats window.
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignPlatform] The external ad platform this ad group is running on (e.g., meta, tiktok).
      #
      #   @param purchase_value [Float] Total USD value of Whop pixel-attributed purchases in the stats window.
      #
      #   @param purchases [Integer] Number of Whop pixel-attributed purchases (last-click) in the stats window.
      #
      #   @param reach [Integer] Unique users reached in the stats window (deduplicated by the platform).
      #
      #   @param roas [Float] Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of attri
      #
      #   @param spend [Float] Amount charged in dollars in the stats window.
      #
      #   @param spend_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupStatus] Current operational status of the ad group.
      #
      #   @param title [String, nil] The ad group name shown in the Whop dashboard.
      #
      #   @param unique_ctr [Float, nil] Unique click-through rate as a fraction of impressions (unique clicks / impressi
      #
      #   @param updated_at [Time] When the ad group was last updated.

      # @see WhopSDK::Models::AdGroupListResponse#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for this ad campaign.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ad campaign this ad group belongs to.
        #
        #   @param id [String] The unique identifier for this ad campaign.
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #   When the issue was first reported.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute error_code
        #   Platform-specific error code.
        #
        #   @return [String, nil]
        required :error_code, String, nil?: true

        # @!attribute error_message
        #   Full error detail from the platform.
        #
        #   @return [String, nil]
        required :error_message, String, nil?: true

        # @!attribute error_summary
        #   Short description of the issue.
        #
        #   @return [String]
        required :error_summary, String

        # @!attribute resolution_status
        #   Current resolution status.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus]
        required :resolution_status, enum: -> { WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus }

        # @!attribute resource_id
        #   The Whop ID of the ad object this issue is on (the ad, ad group, or campaign).
        #   Null when the issue isn't tied to a local object.
        #
        #   @return [String, nil]
        required :resource_id, String, nil?: true

        # @!attribute resource_type
        #   The kind of ad object this issue is on: `ad`, `ad_group`, `campaign`, or
        #   `asset_share`. Pairs with `resourceId`.
        #
        #   @return [String]
        required :resource_type, String

        # @!method initialize(created_at:, error_code:, error_message:, error_summary:, resolution_status:, resource_id:, resource_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdGroupListResponse::Issue} for more details.
        #
        #   A platform-reported issue on an ad object (rejection, policy flag, etc.).
        #
        #   @param created_at [Time] When the issue was first reported.
        #
        #   @param error_code [String, nil] Platform-specific error code.
        #
        #   @param error_message [String, nil] Full error detail from the platform.
        #
        #   @param error_summary [String] Short description of the issue.
        #
        #   @param resolution_status [Symbol, WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus] Current resolution status.
        #
        #   @param resource_id [String, nil] The Whop ID of the ad object this issue is on (the ad, ad group, or campaign). N
        #
        #   @param resource_type [String] The kind of ad object this issue is on: `ad`, `ad_group`, `campaign`, or
        #   `asset\_

        # Current resolution status.
        #
        # @see WhopSDK::Models::AdGroupListResponse::Issue#resolution_status
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
