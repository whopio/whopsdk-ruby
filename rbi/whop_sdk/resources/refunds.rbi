# typed: strong

module WhopSDK
  module Resources
    class Refunds
      # Retrieves a Refund by ID
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::RefundRetrieveResponse)
      end
      def retrieve(
        # The ID of the refund
        id,
        request_options: {}
      )
      end

      # Lists Refunds for a payment.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      sig do
        params(
          payment_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::RefundListResponse]
        )
      end
      def list(
        # The ID of the payment to list refunds for
        payment_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
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
