# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#list
    class AdGroupListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ad_campaign_id
      #   Filter by ad campaign. Provide exactly one of ad_campaign_id or company_id.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String, nil?: true

      # @!attribute ad_campaign_ids
      #   Only return ad groups belonging to these ad campaigns (max 100). Combine with
      #   company_id.
      #
      #   @return [Array<String>, nil]
      optional :ad_campaign_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

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
      #   Filter by company. Provide exactly one of ad_campaign_id or company_id.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return ad groups created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return ad groups created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

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

      # @!attribute query
      #   Case-insensitive substring match against the ad group name or tag.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute stats_from
      #   Inclusive start of the window for each ad group's metric fields (spend,
      #   impressions, …). Omit both statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_from, Time, nil?: true

      # @!attribute stats_to
      #   Inclusive end of the window for each ad group's metric fields. Omit both
      #   statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_to, Time, nil?: true

      # @!attribute status
      #   The status of an external ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupStatus, nil]
      optional :status, enum: -> { WhopSDK::AdGroupStatus }, nil?: true

      # @!method initialize(ad_campaign_id: nil, ad_campaign_ids: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupListParams} for more details.
      #
      #   @param ad_campaign_id [String, nil] Filter by ad campaign. Provide exactly one of ad_campaign_id or company_id.
      #
      #   @param ad_campaign_ids [Array<String>, nil] Only return ad groups belonging to these ad campaigns (max 100). Combine with co
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param campaign_id [String, nil] Filter by campaign.
      #
      #   @param company_id [String, nil] Filter by company. Provide exactly one of ad_campaign_id or company_id.
      #
      #   @param created_after [Time, nil] Only return ad groups created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ad groups created before this timestamp.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param query [String, nil] Case-insensitive substring match against the ad group name or tag.
      #
      #   @param stats_from [Time, nil] Inclusive start of the window for each ad group's metric fields (spend, impressi
      #
      #   @param stats_to [Time, nil] Inclusive end of the window for each ad group's metric fields. Omit both statsFr
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupStatus, nil] The status of an external ad group.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
