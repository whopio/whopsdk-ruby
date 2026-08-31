# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Ad is the individual creative unit delivered by an
    # [ad group](/api-reference/beta/ad-groups/ad-group). It holds the copy, creative
    # assets, and destination URL for one ad.
    #
    # Use the Ads API to list ads for an account, create ads inside ad groups,
    # retrieve or update creative details, delete ads that should stop running, and
    # pause or resume delivery.
    class Ads
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdRetrieveParams} for more details.
      #
      # Retrieves a single ad with stats over the requested window.
      #
      # @overload retrieve(id, attribution_model: nil, stats_from: nil, stats_to: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The ad ID.
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdRetrieveParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
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
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdRetrieveParams
      def retrieve(id, params = {})
        query_params = [:attribution_model, :stats_from, :stats_to, :time_zone]
        parsed, options = WhopSDK::AdRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["ads/%1$s", id],
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdListParams} for more details.
      #
      # Lists the ads for an account, with stats over the requested window.
      #
      # @overload list(account_id: nil, ad_campaign_id: nil, ad_campaign_ids: nil, ad_group_id: nil, ad_group_ids: nil, after: nil, attribution_model: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: The account the ads belong to. Defaults to the account-scoped key's
      #
      # @param ad_campaign_id [String] Query param: Only return ads in this ad campaign.
      #
      # @param ad_campaign_ids [Array<String>] Query param: Only return ads in these ad campaigns (max 100). Repeat the paramet
      #
      # @param ad_group_id [String] Query param: Only return ads in this ad group.
      #
      # @param ad_group_ids [Array<String>] Query param: Only return ads in these ad groups (max 100). Repeat the parameter
      #
      # @param after [String] Query param: Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param attribution_model [Symbol, WhopSDK::Models::AdListParams::AttributionModel] Query param: Attribution model the conversion stats count under (defaults to las
      #
      # @param before [String] Query param: Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Query param: Only return ads created after this timestamp.
      #
      # @param created_before [String] Query param: Only return ads created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdListParams::Direction] Query param: The sort direction. Defaults to desc.
      #
      # @param first [Integer] Query param: The number of ads to return.
      #
      # @param last [Integer] Query param: The number of ads to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdListParams::Order] Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
      #
      # @param query [String] Query param: Filter ads by a title or ID substring.
      #
      # @param stats_from [String] Query param: Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] Query param: End of the stats window. Defaults to now.
      #
      # @param status [Symbol, WhopSDK::Models::AdListParams::Status] Query param: Only return ads with this status.
      #
      # @param time_zone [String] Query param: IANA timezone (e.g. America/New_York) the stats window is interpret
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Ad>]
      #
      # @see WhopSDK::Models::AdListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :ad_campaign_id,
            :ad_campaign_ids,
            :ad_group_id,
            :ad_group_ids,
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
        parsed, options = WhopSDK::AdListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "ads",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdPauseParams} for more details.
      #
      # Pauses an active ad.
      #
      # @overload pause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdPauseParams
      def pause(id, params = {})
        parsed, options = WhopSDK::AdPauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ads/%1$s/pause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdUnpauseParams} for more details.
      #
      # Resumes a paused ad.
      #
      # @overload unpause(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdUnpauseParams
      def unpause(id, params = {})
        parsed, options = WhopSDK::AdUnpauseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["ads/%1$s/unpause", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::Ad,
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
