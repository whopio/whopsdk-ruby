# frozen_string_literal: true

module Whopsdk
  module Resources
    class Products
      # Retrieves a product by ID or route
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Product, nil]
      #
      # @see Whopsdk::Models::ProductRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["products/%1$s", id],
          model: Whopsdk::Product,
          options: params[:request_options]
        )
      end

      # Lists products for a company
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, product_types: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to filter products by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, Whopsdk::Models::ProductListParams::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::ProductListParams::Order, nil] The ways a relation of AccessPasses can be ordered
      #
      # @param product_types [Array<Symbol, Whopsdk::Models::ProductListParams::ProductType, nil>, nil] The type of products to filter by
      #
      # @param visibilities [Array<Symbol, Whopsdk::Models::ProductListParams::Visibility, nil>, nil] The visibility of the products to filter by
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::ProductListItem, nil>]
      #
      # @see Whopsdk::Models::ProductListParams
      def list(params)
        parsed, options = Whopsdk::ProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "products",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::ProductListItem,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
