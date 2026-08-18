# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#list
    class CompanyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return companies created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return companies created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   The sort direction for results. Defaults to descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute parent_company_id
      #   The unique identifier of the parent platform company. When provided, lists
      #   connected accounts under that platform. Omit to list the current user's own
      #   companies.
      #
      #   @return [String, nil]
      optional :parent_company_id, String

      # @!method initialize(after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, parent_company_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time] Only return companies created after this timestamp.
      #
      #   @param created_before [Time] Only return companies created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param parent_company_id [String] The unique identifier of the parent platform company. When provided, lists conne
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
