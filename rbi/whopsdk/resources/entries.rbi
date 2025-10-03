# typed: strong

module Whopsdk
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Entry))
      end
      def retrieve(id, request_options: {})
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
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::EntryListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses:
            T.nilable(T::Array[T.nilable(Whopsdk::EntryStatus::OrSymbol)]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::EntryListResponse)
          ]
        )
      end
      def list(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
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
        # The access pass IDs to filter the entries by
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::EntryApproveResponse)
      end
      def approve(id, request_options: {})
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Entry))
      end
      def deny(id, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
