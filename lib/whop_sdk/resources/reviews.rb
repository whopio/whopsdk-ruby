# frozen_string_literal: true

module WhopSDK
  module Resources
    class Reviews
      # Retrieves the details of an existing review.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the review to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ReviewRetrieveResponse]
      #
      # @see WhopSDK::Models::ReviewRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["reviews/%1$s", id],
          model: WhopSDK::Models::ReviewRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of customer reviews for a specific product, with
      # optional filtering by star rating and creation date.
      #
      # @overload list(product_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, max_stars: nil, min_stars: nil, request_options: {})
      #
      # @param product_id [String] The unique identifier of the product to list reviews for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return reviews created after this timestamp.
      #
      # @param created_before [Time, nil] Only return reviews created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param max_stars [Integer, nil] The maximum star rating to include in results, from 1 to 5 inclusive.
      #
      # @param min_stars [Integer, nil] The minimum star rating to include in results, from 1 to 5 inclusive.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ReviewListResponse>]
      #
      # @see WhopSDK::Models::ReviewListParams
      def list(params)
        parsed, options = WhopSDK::ReviewListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "reviews",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ReviewListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
