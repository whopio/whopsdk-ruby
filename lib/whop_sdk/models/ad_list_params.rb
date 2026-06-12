# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#list
    class AdListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ad_campaign_id
      #   Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or
      #   company_id.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String, nil?: true

      # @!attribute ad_campaign_ids
      #   Only return ads belonging to these ad campaigns (max 100). Can be combined with
      #   companyId or used on its own.
      #
      #   @return [Array<String>, nil]
      optional :ad_campaign_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute ad_group_id
      #   Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or
      #   company_id.
      #
      #   @return [String, nil]
      optional :ad_group_id, String, nil?: true

      # @!attribute ad_group_ids
      #   Only return ads belonging to these ad groups (max 100). Can be combined with
      #   companyId or used on its own.
      #
      #   @return [Array<String>, nil]
      optional :ad_group_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute campaign_id
      #   Filter by campaign.
      #
      #   @return [String, nil]
      optional :campaign_id, String, nil?: true

      # @!attribute company_id
      #   Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or
      #   company_id.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return ads created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return ads created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      #   columns are computed over the provided stats date range.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AdListParams::Order }, nil?: true

      # @!attribute order_by
      #   Columns that the listAds query can sort by. Deprecated — use AdStatOrder.
      #
      #   @return [Symbol, WhopSDK::Models::AdListParams::OrderBy, nil]
      optional :order_by, enum: -> { WhopSDK::AdListParams::OrderBy }, nil?: true

      # @!attribute order_direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :order_direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute query
      #   Case-insensitive substring match against the ad title or ID.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute stats_from
      #   Inclusive start of the window for each ad's metric fields (spend, impressions,
      #   …) and for stats-column sorting. Omit both statsFrom and statsTo for all-time
      #   stats.
      #
      #   @return [Time, nil]
      optional :stats_from, Time, nil?: true

      # @!attribute stats_to
      #   Inclusive end of the window for each ad's metric fields and for stats-column
      #   sorting. Omit both statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_to, Time, nil?: true

      # @!attribute status
      #   The status of an external ad.
      #
      #   @return [Symbol, WhopSDK::Models::ExternalAdStatus, nil]
      optional :status, enum: -> { WhopSDK::ExternalAdStatus }, nil?: true

      # @!method initialize(ad_campaign_id: nil, ad_campaign_ids: nil, ad_group_id: nil, ad_group_ids: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, order_by: nil, order_direction: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdListParams} for more details.
      #
      #   @param ad_campaign_id [String, nil] Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or co
      #
      #   @param ad_campaign_ids [Array<String>, nil] Only return ads belonging to these ad campaigns (max 100). Can be combined with
      #
      #   @param ad_group_id [String, nil] Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or compa
      #
      #   @param ad_group_ids [Array<String>, nil] Only return ads belonging to these ad groups (max 100). Can be combined with com
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param campaign_id [String, nil] Filter by campaign.
      #
      #   @param company_id [String, nil] Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or compan
      #
      #   @param created_after [Time, nil] Only return ads created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ads created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::AdListParams::Order, nil] The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      #
      #   @param order_by [Symbol, WhopSDK::Models::AdListParams::OrderBy, nil] Columns that the listAds query can sort by. Deprecated — use AdStatOrder.
      #
      #   @param order_direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param query [String, nil] Case-insensitive substring match against the ad title or ID.
      #
      #   @param stats_from [Time, nil] Inclusive start of the window for each ad's metric fields (spend, impressions, …
      #
      #   @param stats_to [Time, nil] Inclusive end of the window for each ad's metric fields and for stats-column sor
      #
      #   @param status [Symbol, WhopSDK::Models::ExternalAdStatus, nil] The status of an external ad.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      # columns are computed over the provided stats date range.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        SPEND = :spend
        IMPRESSIONS = :impressions
        CLICKS = :clicks
        REACH = :reach
        UNIQUE_CLICKS = :unique_clicks
        RESULTS = :results
        CLICK_THROUGH_RATE = :click_through_rate
        COST_PER_CLICK = :cost_per_click
        COST_PER_MILLE = :cost_per_mille
        COST_PER_RESULT = :cost_per_result
        FREQUENCY = :frequency
        RETURN_ON_AD_SPEND = :return_on_ad_spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Columns that the listAds query can sort by. Deprecated — use AdStatOrder.
      module OrderBy
        extend WhopSDK::Internal::Type::Enum

        SPEND = :spend
        RETURN_ON_AD_SPEND = :return_on_ad_spend
        ROAS = :roas

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
