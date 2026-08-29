# typed: strong

module WhopSDK
  module Resources
    # Refunds
    class Refunds
      # Retrieves the details of an existing refund.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
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
        # The unique identifier of the refund.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of refunds, with optional filtering by payment,
      # company, user, and creation date.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      sig do
        params(
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          payment_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::RefundListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter refunds to those belonging to this company. Mutually exclusive with
        # payment_id and user_id: provide exactly one.
        company_id: nil,
        # Only return refunds created after this timestamp.
        created_after: nil,
        # Only return refunds created before this timestamp.
        created_before: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter refunds to those associated with this specific payment. Mutually
        # exclusive with company_id and user_id: provide exactly one.
        payment_id: nil,
        # Filter refunds to those associated with this specific user. Mutually exclusive
        # with payment_id and company_id: provide exactly one. Requires a credential
        # belonging to that user; any other credential receives 'You are not authorized'.
        user_id: nil,
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
