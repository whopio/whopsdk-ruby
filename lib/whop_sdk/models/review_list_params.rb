# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reviews#list
    class ReviewListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute product_id
      #   The unique identifier of the product to list reviews for.
      #
      #   @return [String]
      required :product_id, String

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
      #   Only return reviews created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return reviews created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

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

      # @!attribute max_stars
      #   The maximum star rating to include in results, from 1 to 5 inclusive.
      #
      #   @return [Integer, nil]
      optional :max_stars, Integer

      # @!attribute min_stars
      #   The minimum star rating to include in results, from 1 to 5 inclusive.
      #
      #   @return [Integer, nil]
      optional :min_stars, Integer

      # @!method initialize(product_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, max_stars: nil, min_stars: nil, request_options: {})
      #   @param product_id [String] The unique identifier of the product to list reviews for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time] Only return reviews created after this timestamp.
      #
      #   @param created_before [Time] Only return reviews created before this timestamp.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param max_stars [Integer] The maximum star rating to include in results, from 1 to 5 inclusive.
      #
      #   @param min_stars [Integer] The minimum star rating to include in results, from 1 to 5 inclusive.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
