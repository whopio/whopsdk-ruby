# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#list
    class AdListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account the ads belong to. Defaults to the account-scoped key's own account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute ad_campaign_id
      #   Only return ads in this ad campaign.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String

      # @!attribute ad_campaign_ids
      #   Only return ads in these ad campaigns (max 100). Repeat the parameter for each
      #   id (ad_campaign_ids=a&ad_campaign_ids=b).
      #
      #   @return [Array<String>, nil]
      optional :ad_campaign_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute ad_group_id
      #   Only return ads in this ad group.
      #
      #   @return [String, nil]
      optional :ad_group_id, String

      # @!attribute ad_group_ids
      #   Only return ads in these ad groups (max 100). Repeat the parameter for each id
      #   (ad_group_ids=a&ad_group_ids=b).
      #
      #   @return [Array<String>, nil]
      optional :ad_group_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute after
      #   Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute attribution_model
      #   Attribution model the conversion stats count under (defaults to last_touch).
      #   Under both models a journey with any whop ad touch attributes to whop; the model
      #   picks which whop touch credits the entity and which non-whop source wins
      #   otherwise.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::AttributionModel, nil]
      optional :attribution_model, enum: -> { WhopSDK::AdListParams::AttributionModel }

      # @!attribute before
      #   Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return ads created after this timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only return ads created before this timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   The sort direction. Defaults to desc.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::AdListParams::Direction }

      # @!attribute first
      #   The number of ads to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of ads to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #   …) rank over the stats_from/stats_to window across the whole list, not just the
      #   current page. results, cost_per_result and return_on_ad_spend rank by the same
      #   Whop pixel-attributed values the response reports.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AdListParams::Order }

      # @!attribute query
      #   Filter ads by a title or ID substring.
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
      #   Only return ads with this status.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdListParams::Status }

      # @!attribute time_zone
      #   IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
      #   stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
      #   UTC.
      #
      #   @return [String, nil]
      optional :time_zone, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, ad_campaign_id: nil, ad_campaign_ids: nil, ad_group_id: nil, ad_group_ids: nil, after: nil, attribution_model: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdListParams} for more details.
      #
      #   @param account_id [String] The account the ads belong to. Defaults to the account-scoped key's own account.
      #
      #   @param ad_campaign_id [String] Only return ads in this ad campaign.
      #
      #   @param ad_campaign_ids [Array<String>] Only return ads in these ad campaigns (max 100). Repeat the parameter for each i
      #
      #   @param ad_group_id [String] Only return ads in this ad group.
      #
      #   @param ad_group_ids [Array<String>] Only return ads in these ad groups (max 100). Repeat the parameter for each id (
      #
      #   @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      #   @param attribution_model [Symbol, WhopSDK::Models::AdListParams::AttributionModel] Attribution model the conversion stats count under (defaults to last_touch). Und
      #
      #   @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      #   @param created_after [String] Only return ads created after this timestamp.
      #
      #   @param created_before [String] Only return ads created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::AdListParams::Direction] The sort direction. Defaults to desc.
      #
      #   @param first [Integer] The number of ads to return.
      #
      #   @param last [Integer] The number of ads to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::AdListParams::Order] The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #
      #   @param query [String] Filter ads by a title or ID substring.
      #
      #   @param stats_from [String] Start of the stats window. Defaults to all-time.
      #
      #   @param stats_to [String] End of the stats window. Defaults to now.
      #
      #   @param status [Symbol, WhopSDK::Models::AdListParams::Status] Only return ads with this status.
      #
      #   @param time_zone [String] IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare s
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      module AttributionModel
        extend WhopSDK::Internal::Type::Enum

        LAST_TOUCH = :last_touch
        FIRST_TOUCH = :first_touch

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        LINK_CLICKS = :link_clicks
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

      # Only return ads with this status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        IN_REVIEW = :in_review
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
