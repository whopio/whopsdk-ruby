# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reviews#list
    class ReviewListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute product_id
      #   The ID of the product
      #
      #   @return [String]
      required :product_id, String

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

      # @!attribute max_stars
      #   The maximum star rating of the review (inclusive)
      #
      #   @return [Integer, nil]
      optional :max_stars, Integer, nil?: true

      # @!attribute min_stars
      #   The minimum star rating of the review (inclusive)
      #
      #   @return [Integer, nil]
      optional :min_stars, Integer, nil?: true

      # @!method initialize(product_id:, after: nil, before: nil, first: nil, last: nil, max_stars: nil, min_stars: nil, request_options: {})
      #   @param product_id [String] The ID of the product
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param max_stars [Integer, nil] The maximum star rating of the review (inclusive)
      #
      #   @param min_stars [Integer, nil] The minimum star rating of the review (inclusive)
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
