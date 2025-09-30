# typed: strong

module Whopsdk
  module Resources
    class Products
      # Retrieves a product by ID or route
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Product))
      end
      def retrieve(id, request_options: {})
      end

      # Lists products for a company
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::ProductListParams::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::ProductListParams::Order::OrSymbol),
          product_types:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol)
              ]
            ),
          visibilities:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::ProductListParams::Visibility::OrSymbol)
              ]
            ),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[T.nilable(Whopsdk::ProductListItem)]
        )
      end
      def list(
        # The ID of the company to filter products by
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
        # The ways a relation of AccessPasses can be ordered
        order: nil,
        # The type of products to filter by
        product_types: nil,
        # The visibility of the products to filter by
        visibilities: nil,
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
