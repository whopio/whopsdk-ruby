# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#list
    class AdCampaignListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list ad campaigns for.
      #
      #   @return [String]
      required :company_id, String

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
      #   Case-insensitive substring match against the campaign title.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute status
      #   The status of an ad campaign.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdCampaignListParams::Status }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, query: nil, status: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list ad campaigns for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] Only return ad campaigns created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return ad campaigns created before this timestamp.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param query [String, nil] Case-insensitive substring match against the campaign title.
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignListParams::Status, nil] The status of an ad campaign.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The status of an ad campaign.
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        PAYMENT_FAILED = :payment_failed
        DRAFT = :draft
        IN_REVIEW = :in_review
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
