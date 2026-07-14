# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#list
    class AdGroupListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account whose ad groups to list. Defaults to the authenticated account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute ad_campaign_id
      #   Filter to ad groups in this campaign.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return ad groups created after this timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only return ad groups created before this timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   The sort direction. Defaults to desc.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::AdGroupListParams::Direction }

      # @!attribute first
      #   The number of ad groups to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of ad groups to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #   …) rank over the stats_from/stats_to window across the whole list, not just the
      #   current page. results, cost_per_result and return_on_ad_spend rank by the same
      #   Whop pixel-attributed values the response reports.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AdGroupListParams::Order }

      # @!attribute query
      #   Filter ad groups by a title or ID substring.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute stats_from
      #   Start of the stats window. Defaults to all-time.
      #
      #   @return [String, nil]
      optional :stats_from, String

      # @!attribute stats_to
      #   End of the stats window. Defaults to now.
      #
      #   @return [String, nil]
      optional :stats_to, String

      # @!attribute status
      #   Filter to a status (active, paused, in_review, rejected).
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute time_zone
      #   IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
      #   stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
      #   UTC.
      #
      #   @return [String, nil]
      optional :time_zone, String

      # @!method initialize(account_id: nil, ad_campaign_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupListParams} for more details.
      #
      #   @param account_id [String] Account whose ad groups to list. Defaults to the authenticated account.
      #
      #   @param ad_campaign_id [String] Filter to ad groups in this campaign.
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param created_after [String] Only return ad groups created after this timestamp.
      #
      #   @param created_before [String] Only return ad groups created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::AdGroupListParams::Direction] The sort direction. Defaults to desc.
      #
      #   @param first [Integer] The number of ad groups to return.
      #
      #   @param last [Integer] The number of ad groups to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::AdGroupListParams::Order] The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #
      #   @param query [String] Filter ad groups by a title or ID substring.
      #
      #   @param stats_from [String] Start of the stats window. Defaults to all-time.
      #
      #   @param stats_to [String] End of the stats window. Defaults to now.
      #
      #   @param status [String] Filter to a status (active, paused, in_review, rejected).
      #
      #   @param time_zone [String] IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare s
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      # …) rank over the stats_from/stats_to window across the whole list, not just the
      # current page. results, cost_per_result and return_on_ad_spend rank by the same
      # Whop pixel-attributed values the response reports.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        UPDATED_AT = :updated_at
        SPEND = :spend
        IMPRESSIONS = :impressions
        REACH = :reach
        CLICKS = :clicks
        UNIQUE_CLICKS = :unique_clicks
        FREQUENCY = :frequency
        CLICK_THROUGH_RATE = :click_through_rate
        RESULTS = :results
        COST_PER_MILLE = :cost_per_mille
        COST_PER_CLICK = :cost_per_click
        COST_PER_RESULT = :cost_per_result
        RETURN_ON_AD_SPEND = :return_on_ad_spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
