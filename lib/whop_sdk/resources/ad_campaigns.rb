# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad campaigns
    class AdCampaigns
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignRetrieveParams} for more details.
      #
      # Retrieves a single ad campaign by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for the campaign's metric fields (spend, impressio
      #
      # @param stats_to [Time, nil] Inclusive end of the window for the campaign's metric fields. Omit both statsFro
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdCampaignRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ad_campaigns/%1$s", id],
          query: query,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      # Updates an ad campaign synchronously and returns it immediately (local-first).
      # The platform push runs in the background; any errors surface on the dashboard.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      #
      # @overload update(id, budget: nil, desired_cpr: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad campaign to update.
      #
      # @param budget [Float, nil] The campaign budget in dollars. The interpretation (daily or lifetime) follows t
      #
      # @param desired_cpr [Float, nil] The advertiser's desired cost per result in dollars.
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
      # @overload list(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
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
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::AdCampaignListParams::Order, nil] The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      #
      # @param query [String, nil] Case-insensitive substring match against the campaign title or ID.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for each campaign's metric fields (spend, impressi
      #
      # @param stats_to [Time, nil] Inclusive end of the window for each campaign's metric fields. Omit both statsFr
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
