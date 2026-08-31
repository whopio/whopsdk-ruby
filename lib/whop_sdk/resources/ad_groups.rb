# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Ad Group sits inside an
    # [ad campaign](/api-reference/beta/ad-campaigns/ad-campaign) and controls
    # delivery for [ads](/api-reference/beta/ads/ad). It sets the audience,
    # placements, schedule, budget, and optimization goal for its ads.
    #
    # Use the Ad Groups API to create ad groups in campaigns, list or retrieve
    # targeting and delivery settings, update budgets or targeting, delete groups that
    # should stop running, and pause or resume delivery. It can also search the ad
    # platform's targeting taxonomy for options to target and estimate how many people
    # a draft targeting spec can reach.
    class AdGroups
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupRetrieveParams} for more details.
      #
      # Retrieves a single ad group.
      #
      # @overload retrieve(id, attribution_model: nil, stats_from: nil, stats_to: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The ad group ID.
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdGroupRetrieveParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
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
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupRetrieveParams
      def retrieve(id, params = {})
        query_params = [:attribution_model, :stats_from, :stats_to, :time_zone]
        parsed, options = WhopSDK::AdGroupRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["ad_groups/%1$s", id],
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupUpdateParams} for more details.
      #
      # Updates an ad group's editable fields. Only the keys you send are changed.
      #
      # @overload update(id, audiences: nil, bid_type: nil, budget_amount: nil, budget_type: nil, conversion_event: nil, conversion_location: nil, demographics: nil, desired_cost_per_result: nil, detailed_targeting: nil, devices: nil, ends_at: nil, frequency_cap: nil, languages: nil, message_apps: nil, minimum_daily_spend: nil, optimization_goal: nil, placements: nil, regions: nil, starts_at: nil, status: nil, title: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The ad group ID.
      #
      # @param audiences [WhopSDK::Models::AdGroupUpdateParams::Audiences] Body param: Saved audiences to deliver to or exclude. Can't be combined with dem
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType] Body param: How delivery bids are set in the ad auction. Target-based strategies
      #
      # @param budget_amount [Float] Body param: This ad group's budget, in the ad account's currency. Omit when the
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType] Body param: Whether budget_amount is spent per day (`daily`) or over the ad grou
      #
      # @param conversion_event [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil] Body param: The pixel event optimized for. A standard event, or any custom pixel
      #
      # @param conversion_location [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation] Body param: Where the outcome being optimized for occurs, such as a website visi
      #
      # @param demographics [WhopSDK::Models::AdGroupUpdateParams::Demographics] Body param: Age, gender, and automatic-audience targeting.
      #
      # @param desired_cost_per_result [Float] Body param: Cost per result to aim for (`average_target`) or never exceed (`maxi
      #
      # @param detailed_targeting [WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting] Body param: Interest, behavior, and demographic targeting, using categories from
      #
      # @param devices [WhopSDK::Models::AdGroupUpdateParams::Devices] Body param: Device platforms and operating systems to target.
      #
      # @param ends_at [String] Body param: When the ad group stops delivering, as an ISO 8601 timestamp. Omit t
      #
      # @param frequency_cap [WhopSDK::Models::AdGroupUpdateParams::FrequencyCap] Body param: Cap on how often one person sees ads from this ad group. Only availa
      #
      # @param languages [Array<String>] Body param: Languages to target, as ISO 639 codes such as `en` or `es`. Empty or
      #
      # @param message_apps [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>] Body param: Apps the conversation opens in. Required when setting `conversion_lo
      #
      # @param minimum_daily_spend [Float] Body param: Minimum the ad group tries to spend each day.
      #
      # @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateParams::OptimizationGoal] Body param: The result the ad group's delivery is optimized to get the most of.
      #
      # @param placements [Symbol, Array<WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1>, WhopSDK::Models::AdGroupUpdateParams::Placements] Body param: `automatic` to let the ad platform choose placements, or the list of
      #
      # @param regions [WhopSDK::Models::AdGroupUpdateParams::Regions] Body param: Locations to target and exclude.
      #
      # @param starts_at [String] Body param: When the ad group starts delivering, as an ISO 8601 timestamp. Omit
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status] Body param: Initial status (default: `active`).
      #
      # @param title [String] Body param: The display name of the ad group.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdGroupUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["ad_groups/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupListParams} for more details.
      #
      # Lists ad groups for the account, newest first.
      #
      # @overload list(account_id: nil, ad_campaign_id: nil, ad_campaign_ids: nil, after: nil, attribution_model: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account whose ad groups to list. Defaults to the authenticated acco
      #
      # @param ad_campaign_id [String] Query param: Filter to ad groups in this campaign.
      #
      # @param ad_campaign_ids [Array<String>] Query param: Filter to ad groups in these campaigns (max 100). Repeat the parame
      #
      # @param after [String] Query param: Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdGroupListParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
      #
      # @param before [String] Query param: Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Query param: Only return ad groups created after this timestamp.
      #
      # @param created_before [String] Query param: Only return ad groups created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdGroupListParams::Direction] Query param: The sort direction. Defaults to desc.
      #
      # @param first [Integer] Query param: The number of ad groups to return.
      #
      # @param last [Integer] Query param: The number of ad groups to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdGroupListParams::Order] Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
      #
      # @param query [String] Query param: Filter ad groups by a title or ID substring.
      #
      # @param stats_from [String] Query param: Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] Query param: End of the stats window. Defaults to now.
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupListParams::Status] Query param: Filter to ad groups with this status.
      #
      # @param time_zone [String] Query param: IANA timezone (e.g. America/New_York) the stats window is interpret
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdGroup>]
      #
      # @see WhopSDK::Models::AdGroupListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :ad_campaign_id,
            :ad_campaign_ids,
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
        parsed, options = WhopSDK::AdGroupListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "ad_groups",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Deletes an ad group.
      #
      # @overload delete(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroupDeleteResponse]
      #
      # @see WhopSDK::Models::AdGroupDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::AdGroupDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["ad_groups/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::AdGroupDeleteResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupPauseParams} for more details.
      #
      # Pauses delivery of an ad group.
      #
      # @overload pause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupPauseParams
      def pause(id, params = {})
        parsed, options = WhopSDK::AdGroupPauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/pause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupUnpauseParams} for more details.
      #
      # Resumes delivery of a paused ad group.
      #
      # @overload unpause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUnpauseParams
      def unpause(id, params = {})
        parsed, options = WhopSDK::AdGroupUnpauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/unpause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::AdGroup,
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
