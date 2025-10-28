# frozen_string_literal: true

module WhopSDK
  module Resources
    class Reviews
      # Retrieve a review by its ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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

      # List all reviews
      #
      # @overload list(product_id:, after: nil, before: nil, first: nil, last: nil, max_stars: nil, min_stars: nil, request_options: {})
      #
      # @param product_id [String] The ID of the product
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param max_stars [Integer, nil] The maximum star rating of the review (inclusive)
      #
      # @param min_stars [Integer, nil] The minimum star rating of the review (inclusive)
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
