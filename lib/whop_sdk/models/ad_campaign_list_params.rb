# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#list
    class AdCampaignListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

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

      # @!attribute company_id
      #   The unique identifier of the company to list ad campaigns for.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return ad campaigns created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return ad campaigns created before this timestamp.
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
      #   @return [Symbol, WhopSDK::Models::AdCampaignListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::AdCampaignListParams::Order }, nil?: true

      # @!attribute query
      #   Case-insensitive substring match against the campaign title or ID.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute stats_from
      #   Inclusive start of the window for each campaign's metric fields (spend,
      #   impressions, …). Omit both statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_from, Time, nil?: true

      # @!attribute stats_to
      #   Inclusive end of the window for each campaign's metric fields. Omit both
      #   statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_to, Time, nil?: true

      # @!attribute status
      #   The status of an ad campaign.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignStatus, nil]
      optional :status, enum: -> { WhopSDK::AdCampaignStatus }, nil?: true

      # @!method initialize(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String, nil] The unique identifier of the company to list ad campaigns for.
      #
      #   @param created_after [Time, nil] Only return ad campaigns created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ad campaigns created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::AdCampaignListParams::Order, nil] The fields the ads dashboard lists (campaigns, ad sets) can be ordered by. Stat
      #
      #   @param query [String, nil] Case-insensitive substring match against the campaign title or ID.
      #
      #   @param stats_from [Time, nil] Inclusive start of the window for each campaign's metric fields (spend, impressi
      #
      #   @param stats_to [Time, nil] Inclusive end of the window for each campaign's metric fields. Omit both statsFr
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignStatus, nil] The status of an ad campaign.
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
    end
  end
end
