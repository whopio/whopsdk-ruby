# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#list
    class AdListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute ad_group_id
      #   Filter by ad group. Provide exactly one of ad_group_id, campaign_id, or
      #   company_id.
      #
      #   @return [String, nil]
      optional :ad_group_id, String, nil?: true

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
      #   Filter by campaign. Provide exactly one of ad_group_id, campaign_id, or
      #   company_id.
      #
      #   @return [String, nil]
      optional :campaign_id, String, nil?: true

      # @!attribute company_id
      #   Filter by company. Provide exactly one of ad_group_id, campaign_id, or
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

      # @!attribute status
      #   The status of an external ad.
      #
      #   @return [Symbol, WhopSDK::Models::ExternalAdStatus, nil]
      optional :status, enum: -> { WhopSDK::ExternalAdStatus }, nil?: true

      # @!method initialize(ad_group_id: nil, after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdListParams} for more details.
      #
      #   @param ad_group_id [String, nil] Filter by ad group. Provide exactly one of ad*group_id, campaign_id, or company*
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param campaign_id [String, nil] Filter by campaign. Provide exactly one of ad*group_id, campaign_id, or company*
      #
      #   @param company_id [String, nil] Filter by company. Provide exactly one of ad_group_id, campaign_id, or company_i
      #
      #   @param created_after [Time, nil] Only return ads created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ads created before this timestamp.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param status [Symbol, WhopSDK::Models::ExternalAdStatus, nil] The status of an external ad.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
