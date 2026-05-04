# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad campaigns
    class AdCampaigns
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignCreateParams} for more details.
      #
      # Creates a new ad campaign for a product.
      #
      # Required permissions:
      #
      # - `ad_campaign:create`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      #
      # @overload create(company_id:, config:, platform:, title:, ad_creative_set_ids: nil, budget: nil, budget_type: nil, daily_budget: nil, product_id: nil, target_country_codes: nil, request_options: {})
      #
      # @param company_id [String] The company ID to create this ad campaign for.
      #
      # @param config [WhopSDK::Models::AdCampaignCreateParams::Config] Unified campaign configuration (conversion goal, budget, bidding, etc.).
      #
      # @param platform [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform] The ad platform to run on (e.g., meta, tiktok).
      #
      # @param title [String] The title of the ad campaign. Must be max 100 characters.
      #
      # @param ad_creative_set_ids [Array<String>, nil] Array of creative set IDs to link to this campaign.
      #
      # @param budget [Float, nil] Budget amount in dollars.
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      # @param daily_budget [Float, nil] Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
      #
      # @param product_id [String, nil] The unique identifier of the product to promote.
      #
      # @param target_country_codes [Array<String>, nil] Array of ISO3166 country codes for territory targeting.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaignCreateResponse]
      #
      # @see WhopSDK::Models::AdCampaignCreateParams
      def create(params)
        parsed, options = WhopSDK::AdCampaignCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ad_campaigns",
          body: parsed,
          model: WhopSDK::Models::AdCampaignCreateResponse,
          options: options
        )
      end

      # Retrieves a single ad campaign by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaignRetrieveResponse]
      #
      # @see WhopSDK::Models::AdCampaignRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ad_campaigns/%1$s", id],
          model: WhopSDK::Models::AdCampaignRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates an existing ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      #
      # @overload update(id, ad_creative_set_ids: nil, budget: nil, budget_type: nil, config: nil, daily_budget: nil, product_id: nil, target_country_codes: nil, title: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to update.
      #
      # @param ad_creative_set_ids [Array<String>, nil] Array of creative set IDs to link to this campaign.
      #
      # @param budget [Float, nil] Budget amount in dollars.
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetType, nil] The budget type for an ad campaign or ad group.
      #
      # @param config [WhopSDK::Models::AdCampaignUpdateParams::Config, nil] Unified campaign configuration (conversion goal, budget, bidding, etc.).
      #
      # @param daily_budget [Float, nil] Daily budget in dollars (minimum $5).
      #
      # @param product_id [String, nil] The unique identifier of the product (access pass) to promote.
      #
      # @param target_country_codes [Array<String>, nil] Array of ISO3166 country codes for territory targeting.
      #
      # @param title [String, nil] The title of the ad campaign. Must be max 100 characters.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaignUpdateResponse]
      #
      # @see WhopSDK::Models::AdCampaignUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdCampaignUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ad_campaigns/%1$s", id],
          body: parsed,
          model: WhopSDK::Models::AdCampaignUpdateResponse,
          options: options
        )
      end

      # Returns a paginated list of ad campaigns for a company, with optional filtering
      # by status, and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      # - `access_pass:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, status: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list ad campaigns for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return ad campaigns created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ad campaigns created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param query [String, nil] Case-insensitive substring match against the campaign title.
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignListParams::Status, nil] The status of an ad campaign.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdCampaignListResponse>]
      #
      # @see WhopSDK::Models::AdCampaignListParams
      def list(params)
        parsed, options = WhopSDK::AdCampaignListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ad_campaigns",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AdCampaignListResponse,
          options: options
        )
      end

      # Pauses an ad campaign, optionally until a specific date.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to pause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaignPauseResponse]
      #
      # @see WhopSDK::Models::AdCampaignPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/pause", id],
          model: WhopSDK::Models::AdCampaignPauseResponse,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `access_pass:basic:read`
      # - `company:balance:read`
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to unpause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaignUnpauseResponse]
      #
      # @see WhopSDK::Models::AdCampaignUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/unpause", id],
          model: WhopSDK::Models::AdCampaignUnpauseResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
