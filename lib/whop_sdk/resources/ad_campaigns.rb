# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad campaigns
    class AdCampaigns
      # Retrieves a single ad campaign by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ad_campaigns/%1$s", id],
          model: WhopSDK::AdCampaign,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      # Updates an ad campaign synchronously.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      #
      # @overload update(id, budget: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to update.
      #
      # @param budget [Float, nil] The campaign budget in dollars. The interpretation (daily or lifetime) follows t
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdCampaignUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ad_campaigns/%1$s", id],
          body: parsed,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignListParams} for more details.
      #
      # Returns a paginated list of ad campaigns for a company, with optional filtering
      # by status, and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, include_paused: nil, last: nil, query: nil, status: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to list ad campaigns for.
      #
      # @param created_after [Time, nil] Only return ad campaigns created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ad campaigns created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param include_paused [Boolean, nil] When false, excludes paused campaigns so pagination matches the dashboard's hide
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param query [String, nil] Case-insensitive substring match against the campaign title.
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignStatus, nil] The status of an ad campaign.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdCampaignListResponse>]
      #
      # @see WhopSDK::Models::AdCampaignListParams
      def list(params = {})
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
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to pause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/pause", id],
          model: WhopSDK::AdCampaign,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to unpause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/unpause", id],
          model: WhopSDK::AdCampaign,
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
