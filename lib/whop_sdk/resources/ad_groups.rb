# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad groups
    class AdGroups
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupRetrieveParams} for more details.
      #
      # Retrieves a single ad group by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for the ad group's metric fields (spend, impressio
      #
      # @param stats_to [Time, nil] Inclusive end of the window for the ad group's metric fields. Omit both statsFro
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdGroupRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ad_groups/%1$s", id],
          query: query,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Updates an existing ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      #
      # @overload update(id, budget: nil, budget_type: nil, config: nil, daily_budget: nil, name: nil, platform_config: nil, status: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group to update.
      #
      # @param budget [Float, nil] Budget amount in dollars.
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      # @param config [WhopSDK::Models::AdGroupUpdateParams::Config, nil] Unified ad group configuration (bidding, optimization, targeting).
      #
      # @param daily_budget [Float, nil] Daily budget in dollars.
      #
      # @param name [String, nil] Human-readable ad group name.
      #
      # @param platform_config [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig, nil] Platform-specific ad group configuration.
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupStatus, nil] The status of an external ad group.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ad_groups/%1$s", id],
          body: parsed,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupListParams} for more details.
      #
      # Returns a paginated list of ad groups scoped by campaign or company, with
      # optional filtering by status and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload list(ad_campaign_id: nil, ad_campaign_ids: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
      #
      # @param ad_campaign_id [String, nil] Filter by ad campaign. Provide exactly one of ad_campaign_id or company_id.
      #
      # @param ad_campaign_ids [Array<String>, nil] Only return ad groups belonging to these ad campaigns (max 100). Combine with co
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param campaign_id [String, nil] Filter by campaign.
      #
      # @param company_id [String, nil] Filter by company. Provide exactly one of ad_campaign_id or company_id.
      #
      # @param created_after [Time, nil] Only return ad groups created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ad groups created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param query [String, nil] Case-insensitive substring match against the ad group name or ID.
      #
      # @param stats_from [Time, nil] Inclusive start of the window for each ad group's metric fields (spend, impressi
      #
      # @param stats_to [Time, nil] Inclusive end of the window for each ad group's metric fields. Omit both statsFr
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupStatus, nil] The status of an external ad group.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdGroupListResponse>]
      #
      # @see WhopSDK::Models::AdGroupListParams
      def list(params = {})
        parsed, options = WhopSDK::AdGroupListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ad_groups",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AdGroupListResponse,
          options: options
        )
      end

      # Soft-deletes an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AdGroupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ad_groups/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Pauses an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group to pause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/pause", id],
          model: WhopSDK::AdGroup,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group to unpause.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/unpause", id],
          model: WhopSDK::AdGroup,
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
