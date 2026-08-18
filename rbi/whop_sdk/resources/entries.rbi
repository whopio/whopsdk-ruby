# typed: strong

module WhopSDK
  module Resources
    # Entries
    class Entries
      # Retrieves the details of an existing waitlist entry.
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Entry)
      end
      def retrieve(
        # The unique identifier of the waitlist entry to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of waitlist entries for a company, with optional
      # filtering by product, plan, status, and creation date.
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::EntryListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          statuses: T::Array[WhopSDK::EntryStatus::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::EntryListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list waitlist entries for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return entries created after this timestamp.
        created_after: nil,
        # Only return entries created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The column to sort waitlist entries by. Defaults to creation date.
        order: nil,
        # Filter entries to only those for specific plans.
        plan_ids: nil,
        # Filter entries to only those for specific products.
        product_ids: nil,
        # Filter entries by their current status.
        statuses: nil,
        request_options: {}
      )
      end

      # Approve a pending waitlist entry, triggering the checkout process to grant the
      # user access to the plan.
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::EntryApproveResponse)
      end
      def approve(
        # The unique identifier of the waitlist entry to approve.
        id,
        request_options: {}
      )
      end

      # Deny a pending waitlist entry, preventing the user from gaining access to the
      # plan.
      #
      # Required permissions:
      #
      # - `plan:waitlist:manage`
      # - `plan:basic:read`
      # - `member:email:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Entry)
      end
      def deny(
        # The unique identifier of the waitlist entry to deny.
        id,
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
