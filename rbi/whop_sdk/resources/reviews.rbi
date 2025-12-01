# typed: strong

module WhopSDK
  module Resources
    class Reviews
      # Retrieve a review by its ID
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ReviewRetrieveResponse)
      end
      def retrieve(
        # The ID of the review
        id,
        request_options: {}
      )
      end

      # List all reviews
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
        # The ID of the product
        product_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The maximum star rating of the review (inclusive)
        max_stars: nil,
        # The minimum star rating of the review (inclusive)
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
