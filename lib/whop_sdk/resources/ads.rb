# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ads
    class Ads
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCreateParams} for more details.
      #
      # Create an ad within an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:create`
      # - `ad_campaign:basic:read`
      #
      # @overload create(ad_group_id:, creative_set_id: nil, existing_instagram_media_id: nil, existing_post_id: nil, platform_config: nil, status: nil, request_options: {})
      #
      # @param ad_group_id [String] The unique identifier of the ad group to create this ad in.
      #
      # @param creative_set_id [String, nil] The unique identifier of the creative set to use.
      #
      # @param existing_instagram_media_id [String, nil] ID of an existing Instagram media item to use as the ad creative (instead of a c
      #
      # @param existing_post_id [String, nil] ID of an existing Facebook post to use as the ad creative (instead of a creative
      #
      # @param platform_config [WhopSDK::Models::AdCreateParams::PlatformConfig, nil] Platform-specific configuration. Must match the campaign platform.
      #
      # @param status [Symbol, WhopSDK::Models::AdCreateParams::Status, nil] The status of an external ad.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCreateResponse]
      #
      # @see WhopSDK::Models::AdCreateParams
      def create(params)
        parsed, options = WhopSDK::AdCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ads",
          body: parsed,
          model: WhopSDK::Models::AdCreateResponse,
          options: options
        )
      end

      # Retrieve an ad by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdRetrieveResponse]
      #
      # @see WhopSDK::Models::AdRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ads/%1$s", id],
          model: WhopSDK::Models::AdRetrieveResponse,
          options: params[:request_options]
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
      # @overload list(ad_group_id: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, status: nil, request_options: {})
      #
      # @param ad_group_id [String, nil] Filter by ad group. Provide exactly one of ad*group_id, campaign_id, or company*
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param campaign_id [String, nil] Filter by campaign. Provide exactly one of ad*group_id, campaign_id, or company*
      #
      # @param company_id [String, nil] Filter by company. Provide exactly one of ad_group_id, campaign_id, or company_i
      #
      # @param created_after [Time, nil] Only return ads created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ads created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param status [Symbol, WhopSDK::Models::AdListParams::Status, nil] The status of an external ad.
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
