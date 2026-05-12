# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#list
    class AdGroupListParams < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute campaign_id
      #   Filter by campaign. Provide exactly one of campaign_id or company_id.
      #
      #   @return [String, nil]
      optional :campaign_id, String, nil?: true

      # @!attribute company_id
      #   Filter by company. Provide exactly one of campaign_id or company_id.
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
      #   Case-insensitive substring match against the ad group name.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute status
      #   The status of an external ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdGroupListParams::Status }, nil?: true

      # @!method initialize(after: nil, before: nil, campaign_id: nil, company_id: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, status: nil, request_options: {})
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param campaign_id [String, nil] Filter by campaign. Provide exactly one of campaign_id or company_id.
      #
      #   @param company_id [String, nil] Filter by company. Provide exactly one of campaign_id or company_id.
      #
      #   @param created_after [Time, nil] Only return ad groups created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ad groups created before this timestamp.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param query [String, nil] Case-insensitive substring match against the ad group name.
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupListParams::Status, nil] The status of an external ad group.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The status of an external ad group.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
