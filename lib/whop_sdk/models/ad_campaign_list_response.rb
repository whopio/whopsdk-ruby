# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#list
    class AdCampaignListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the ad campaign.
      #
      #   @return [String]
      required :id, String

      # @!attribute available_budget
      #   Available budget in dollars, capped at daily budget minus today's spend for
      #   daily campaigns
      #
      #   @return [Float]
      required :available_budget, Float

      # @!attribute clicks_count
      #   Number of clicks
      #
      #   @return [Integer]
      required :clicks_count, Integer

      # @!attribute created_at
      #   The datetime the ad campaign was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute daily_budget
      #   Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      #   campaign-level daily budget
      #
      #   @return [Float, nil]
      required :daily_budget, Float, nil?: true

      # @!attribute impressions_count
      #   Number of impressions (views)
      #
      #   @return [Integer]
      required :impressions_count, Integer

      # @!attribute paused_until
      #   If temporarily paused, the timestamp when the campaign will auto-resume
      #
      #   @return [Time, nil]
      required :paused_until, Time, nil?: true

      # @!attribute platform
      #   The platforms where an ad campaign can run.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Platform, nil]
      required :platform, enum: -> { WhopSDK::Models::AdCampaignListResponse::Platform }, nil?: true

      # @!attribute product
      #   The access pass being promoted. Null for campaigns that don't target a specific
      #   product.
      #
      #   @return [WhopSDK::Models::AdCampaignListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::AdCampaignListResponse::Product }, nil?: true

      # @!attribute purchases_count
      #   Number of purchases
      #
      #   @return [Integer]
      required :purchases_count, Integer

      # @!attribute remaining_balance
      #   Remaining balance in dollars
      #
      #   @return [Float]
      required :remaining_balance, Float

      # @!attribute return_on_ad_spend
      #   Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      #
      #   @return [Float]
      required :return_on_ad_spend, Float

      # @!attribute revenue
      #   Total revenue generated from users who converted through this campaign
      #
      #   @return [Float]
      required :revenue, Float

      # @!attribute status
      #   Current status of the campaign (active, paused, or inactive)
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdCampaignListResponse::Status }

      # @!attribute target_country_codes
      #   Array of ISO3166 country codes for territory targeting
      #
      #   @return [Array<String>]
      required :target_country_codes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute title
      #   The title of the ad campaign
      #
      #   @return [String]
      required :title, String

      # @!attribute todays_spend
      #   Amount spent today in dollars
      #
      #   @return [Float]
      required :todays_spend, Float

      # @!attribute total_credits
      #   Total credits added to the campaign in dollars
      #
      #   @return [Float]
      required :total_credits, Float

      # @!attribute total_spend
      #   Total amount spent on conversions in dollars
      #
      #   @return [Float]
      required :total_spend, Float

      # @!attribute updated_at
      #   The datetime the ad campaign was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, available_budget:, clicks_count:, created_at:, daily_budget:, impressions_count:, paused_until:, platform:, product:, purchases_count:, remaining_balance:, return_on_ad_spend:, revenue:, status:, target_country_codes:, title:, todays_spend:, total_credits:, total_spend:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignListResponse} for more details.
      #
      #   An advertising campaign running on an external platform or within Whop.
      #
      #   @param id [String] The unique identifier for the ad campaign.
      #
      #   @param available_budget [Float] Available budget in dollars, capped at daily budget minus today's spend for dail
      #
      #   @param clicks_count [Integer] Number of clicks
      #
      #   @param created_at [Time] The datetime the ad campaign was created.
      #
      #   @param daily_budget [Float, nil] Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      #
      #   @param impressions_count [Integer] Number of impressions (views)
      #
      #   @param paused_until [Time, nil] If temporarily paused, the timestamp when the campaign will auto-resume
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignListResponse::Platform, nil] The platforms where an ad campaign can run.
      #
      #   @param product [WhopSDK::Models::AdCampaignListResponse::Product, nil] The access pass being promoted. Null for campaigns that don't target a specific
      #
      #   @param purchases_count [Integer] Number of purchases
      #
      #   @param remaining_balance [Float] Remaining balance in dollars
      #
      #   @param return_on_ad_spend [Float] Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      #
      #   @param revenue [Float] Total revenue generated from users who converted through this campaign
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignListResponse::Status] Current status of the campaign (active, paused, or inactive)
      #
      #   @param target_country_codes [Array<String>] Array of ISO3166 country codes for territory targeting
      #
      #   @param title [String] The title of the ad campaign
      #
      #   @param todays_spend [Float] Amount spent today in dollars
      #
      #   @param total_credits [Float] Total credits added to the campaign in dollars
      #
      #   @param total_spend [Float] Total amount spent on conversions in dollars
      #
      #   @param updated_at [Time] The datetime the ad campaign was last updated.

      # The platforms where an ad campaign can run.
      #
      # @see WhopSDK::Models::AdCampaignListResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::AdCampaignListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug used in the product's public link (e.g., 'my-product' in
        #   whop.com/company/my-product).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignListResponse::Product} for more details.
        #
        #   The access pass being promoted. Null for campaigns that don't target a specific
        #   product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param route [String] The URL slug used in the product's public link (e.g., 'my-product' in whop.com/c
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # Current status of the campaign (active, paused, or inactive)
      #
      # @see WhopSDK::Models::AdCampaignListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        STALE = :stale
        PENDING_REFUND = :pending_refund
        PAYMENT_FAILED = :payment_failed
        DRAFT = :draft
        IN_REVIEW = :in_review
        FLAGGED = :flagged
        IMPORTING = :importing
        IMPORTED = :imported

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
