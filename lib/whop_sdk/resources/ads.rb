# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ads
    class Ads
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdRetrieveParams} for more details.
      #
      # Retrieve an ad by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for the ad's metric fields (spend, impressions, …)
      #
      # @param stats_to [Time, nil] Inclusive end of the window for the ad's metric fields. Omit both statsFrom and
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ads/%1$s", id],
          query: query,
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdListParams} for more details.
      #
      # List ads scoped by ad group, campaign, or company.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload list(ad_campaign_id: nil, ad_campaign_ids: nil, ad_group_id: nil, ad_group_ids: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, order_by: nil, order_direction: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
      #
      # @param ad_campaign_id [String, nil] Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or co
      #
      # @param ad_campaign_ids [Array<String>, nil] Only return ads belonging to these ad campaigns (max 100). Can be combined with
      #
      # @param ad_group_id [String, nil] Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or compa
      #
      # @param ad_group_ids [Array<String>, nil] Only return ads belonging to these ad groups (max 100). Can be combined with com
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param campaign_id [String, nil] Filter by campaign.
      #
      # @param company_id [String, nil] Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or compan
      #
      # @param created_after [Time, nil] Only return ads created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ads created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::AdListParams::Order, nil] The fields ad resources can be ordered by.
      #
      # @param order_by [Symbol, WhopSDK::Models::AdListParams::OrderBy, nil] Columns that the listAds query can sort by. Deprecated — use AdOrder.
      #
      # @param order_direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param query [String, nil] Case-insensitive substring match against the ad title or ID.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for each ad's metric fields (spend, impressions, …
      #
      # @param stats_to [Time, nil] Inclusive end of the window for each ad's metric fields and for stats-column sor
      #
      # @param status [Symbol, WhopSDK::Models::ExternalAdStatus, nil] The status of an external ad.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdListResponse>]
      #
      # @see WhopSDK::Models::AdListParams
      def list(params = {})
        parsed, options = WhopSDK::AdListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ads",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AdListResponse,
          options: options
        )
      end

      # Pauses an ad.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad to pause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ads/%1$s/pause", id],
          model: WhopSDK::Ad,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad to unpause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ads/%1$s/unpause", id],
          model: WhopSDK::Ad,
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
