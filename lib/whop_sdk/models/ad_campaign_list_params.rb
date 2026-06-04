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
      #   Case-insensitive substring match against the campaign title or tag.
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

      # @!method initialize(after: nil, before: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, request_options: {})
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
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param query [String, nil] Case-insensitive substring match against the campaign title or tag.
      #
      #   @param stats_from [Time, nil] Inclusive start of the window for each campaign's metric fields (spend, impressi
      #
      #   @param stats_to [Time, nil] Inclusive end of the window for each campaign's metric fields. Omit both statsFr
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignStatus, nil] The status of an ad campaign.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
