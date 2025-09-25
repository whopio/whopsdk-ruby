# typed: strong

module Whopsdk
  module Resources
    class AccessPasses
      # Retrieves an access pass by ID
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::AccessPass)
      end
      def retrieve(id, request_options: {})
      end

      # Lists access passes for a company
      sig do
        params(
          company_id: String,
          access_pass_type:
            T.nilable(Whopsdk::AccessPassListParams::AccessPassType::OrSymbol),
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[T.nilable(Whopsdk::AccessPassListItem)]
        )
      end
      def list(
        # The ID of the company to filter access passes by
        company_id:,
        # The type of access passes to filter by
        access_pass_type: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
