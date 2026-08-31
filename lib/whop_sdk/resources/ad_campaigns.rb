# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Ad Campaign is the top-level container for paid ads on an ad network. It sets
    # the platform, objective, and budget strategy shared by its
    # [ad groups](/api-reference/beta/ad-groups/ad-group) and ads.
    #
    # Use the Ad Campaigns API to create campaigns, list campaigns for an account,
    # retrieve or update campaign settings, and pause or resume campaign delivery.
    class AdCampaigns
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignRetrieveParams} for more details.
      #
      # Retrieves a single ad campaign with stats over the requested window.
      #
      # @overload retrieve(id, attribution_model: nil, stats_from: nil, stats_to: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The ad campaign ID.
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdCampaignRetrieveParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
      #
      # @param stats_from [String] Query param: Start of the stats window.
      #
      # @param stats_to [String] Query param: End of the stats window.
      #
      # @param time_zone [String] Query param: IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignRetrieveParams
      def retrieve(id, params = {})
        query_params = [:attribution_model, :stats_from, :stats_to, :time_zone]
        parsed, options = WhopSDK::AdCampaignRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["ad_campaigns/%1$s", id],
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      # Updates an ad campaign's editable fields (title, budget, schedule, bid strategy,
      # special ad categories, and, before launch, budget type and budget optimization),
      # and launches a draft campaign by setting status to active. Objective and desired
      # cost per result are fixed at creation and cannot be changed.
      #
      # @overload update(id, bid_type: nil, budget_amount: nil, budget_optimization: nil, budget_type: nil, ends_at: nil, special_ad_categories: nil, starts_at: nil, status: nil, title: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The ad campaign ID.
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType] Body param: How delivery bids in the ad auction: `minimum_cost` gets the most re
      #
      # @param budget_amount [Float] Body param: The campaign budget, in the account's currency. Interpreted as daily
      #
      # @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization] Body param: Which level owns the budget: the whole campaign (`ad_campaign`) or e
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetType] Body param: Whether `budget_amount` is spent per day (`daily`) or over the campa
      #
      # @param ends_at [String] Body param: When the campaign stops delivering, as an ISO 8601 timestamp. Only f
      #
      # @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaignUpdateParams::SpecialAdCategory>] Body param: Regulated categories the campaign falls under. Editable on any campa
      #
      # @param starts_at [String] Body param: When the campaign starts delivering, as an ISO 8601 timestamp. Only
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignUpdateParams::Status] Body param: Set to active to launch a draft campaign (moderates and pushes it li
      #
      # @param title [String] Body param: The name of the campaign.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdCampaignUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["ad_campaigns/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignListParams} for more details.
      #
      # Lists the ad campaigns for an account, with stats over the requested window.
      #
      # @overload list(account_id: nil, after: nil, attribution_model: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: The account the campaigns belong to. Defaults to the account-scoped
      #
      # @param after [String] Query param: Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdCampaignListParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
      #
      # @param before [String] Query param: Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Query param: Only return campaigns created after this timestamp.
      #
      # @param created_before [String] Query param: Only return campaigns created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdCampaignListParams::Direction] Query param: The sort direction. Defaults to desc.
      #
      # @param first [Integer] Query param: The number of campaigns to return.
      #
      # @param last [Integer] Query param: The number of campaigns to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdCampaignListParams::Order] Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
      #
      # @param query [String] Query param: Filter campaigns by a title or ID substring.
      #
      # @param stats_from [String] Query param: Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] Query param: End of the stats window. Defaults to now.
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignListParams::Status] Query param: Only return campaigns with this status.
      #
      # @param time_zone [String] Query param: IANA timezone (e.g. America/New_York) the stats window is interpret
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdCampaign>]
      #
      # @see WhopSDK::Models::AdCampaignListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :attribution_model,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :last,
            :order,
            :query,
            :stats_from,
            :stats_to,
            :status,
            :time_zone
          ]
        parsed, options = WhopSDK::AdCampaignListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "ad_campaigns",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignPauseParams} for more details.
      #
      # Pauses an active ad campaign.
      #
      # @overload pause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignPauseParams
      def pause(id, params = {})
        parsed, options = WhopSDK::AdCampaignPauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/pause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignUnpauseParams} for more details.
      #
      # Resumes a paused ad campaign.
      #
      # @overload unpause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUnpauseParams
      def unpause(id, params = {})
        parsed, options = WhopSDK::AdCampaignUnpauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/unpause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::AdCampaign,
          options: options
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
