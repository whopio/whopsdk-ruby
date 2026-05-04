# typed: strong

module WhopSDK
  module Resources
    # Ad campaigns
    class AdCampaigns
      # Creates a new ad campaign for a product.
      #
      # Required permissions:
      #
      # - `ad_campaign:create`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      sig do
        params(
          company_id: String,
          config: WhopSDK::AdCampaignCreateParams::Config::OrHash,
          platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
          title: String,
          ad_creative_set_ids: T.nilable(T::Array[String]),
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol),
          daily_budget: T.nilable(Float),
          product_id: T.nilable(String),
          target_country_codes: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCampaignCreateResponse)
      end
      def create(
        # The company ID to create this ad campaign for.
        company_id:,
        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        config:,
        # The ad platform to run on (e.g., meta, tiktok).
        platform:,
        # The title of the ad campaign. Must be max 100 characters.
        title:,
        # Array of creative set IDs to link to this campaign.
        ad_creative_set_ids: nil,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
        # config.
        daily_budget: nil,
        # The unique identifier of the product to promote.
        product_id: nil,
        # Array of ISO3166 country codes for territory targeting.
        target_country_codes: nil,
        request_options: {}
      )
      end

      # Retrieves a single ad campaign by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCampaignRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the ad campaign.
        id,
        request_options: {}
      )
      end

      # Updates an existing ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      sig do
        params(
          id: String,
          ad_creative_set_ids: T.nilable(T::Array[String]),
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol),
          config: T.nilable(WhopSDK::AdCampaignUpdateParams::Config::OrHash),
          daily_budget: T.nilable(Float),
          product_id: T.nilable(String),
          target_country_codes: T.nilable(T::Array[String]),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCampaignUpdateResponse)
      end
      def update(
        # The unique identifier of the ad campaign to update.
        id,
        # Array of creative set IDs to link to this campaign.
        ad_creative_set_ids: nil,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        config: nil,
        # Daily budget in dollars (minimum $5).
        daily_budget: nil,
        # The unique identifier of the product (access pass) to promote.
        product_id: nil,
        # Array of ISO3166 country codes for territory targeting.
        target_country_codes: nil,
        # The title of the ad campaign. Must be max 100 characters.
        title: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of ad campaigns for a company, with optional filtering
      # by status, and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      # - `access_pass:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::AdCampaignListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdCampaignListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list ad campaigns for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return ad campaigns created after this timestamp.
        created_after: nil,
        # Only return ad campaigns created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the campaign title.
        query: nil,
        # The status of an ad campaign.
        status: nil,
        request_options: {}
      )
      end

      # Pauses an ad campaign, optionally until a specific date.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCampaignPauseResponse)
      end
      def pause(
        # The unique identifier of the ad campaign to pause.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCampaignUnpauseResponse)
      end
      def unpause(
        # The unique identifier of the ad campaign to unpause.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
