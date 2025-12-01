# typed: strong

module WhopSDK
  module Resources
    class Entries
      # Retrieves an entry by ID
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
        # The ID of the entry
        id,
        request_options: {}
      )
      end

      # Lists entries for a company
      #
      # Required permissions:
      #
      # - `plan:waitlist:read`
      # - `member:email:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::EntryListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::EntryStatus::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::EntryListResponse]
        )
      end
      def list(
        # The ID of the company
        company_id:,
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
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the entries by
        plan_ids: nil,
        # The product IDs to filter the entries by
        product_ids: nil,
        # The statuses to filter the entries by
        statuses: nil,
        request_options: {}
      )
      end

      # Approve an entry
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
        # The ID of the entry to approve.
        id,
        request_options: {}
      )
      end

      # Deny an entry
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
        # The ID of the entry
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
