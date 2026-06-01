# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad groups
    class AdGroups
      # Retrieves a single ad group by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the ad group.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ad_groups/%1$s", id],
          model: WhopSDK::AdGroup,
          options: params[:request_options]
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

      # Returns a paginated list of ad groups scoped by campaign or company, with
      # optional filtering by status and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      #
      # @overload list(after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, status: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param campaign_id [String, nil] Filter by campaign. Provide exactly one of campaign_id or company_id.
      #
      # @param company_id [String, nil] Filter by company. Provide exactly one of campaign_id or company_id.
      #
      # @param created_after [Time, nil] Only return ad groups created after this timestamp.
      #
      # @param created_before [Time, nil] Only return ad groups created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param query [String, nil] Case-insensitive substring match against the ad group name.
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
