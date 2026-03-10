# typed: strong

module WhopSDK
  module Resources
    # Reviews
    class Reviews
      # Retrieves the details of an existing review.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ReviewRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the review to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of customer reviews for a specific product, with
      # optional filtering by star rating and creation date.
      sig do
        params(
          product_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          max_stars: T.nilable(Integer),
          min_stars: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ReviewListResponse]
        )
      end
      def list(
        # The unique identifier of the product to list reviews for.
        product_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return reviews created after this timestamp.
        created_after: nil,
        # Only return reviews created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The maximum star rating to include in results, from 1 to 5 inclusive.
        max_stars: nil,
        # The minimum star rating to include in results, from 1 to 5 inclusive.
        min_stars: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
