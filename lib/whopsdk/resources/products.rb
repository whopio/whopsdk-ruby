# frozen_string_literal: true

module Whopsdk
  module Resources
    class Products
      # Retrieves a product by ID or route
      #
      # Required permissions:
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
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, product_type: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to filter products by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_type [Symbol, Whopsdk::Models::ProductListParams::ProductType, nil] The different types an access pass can be.
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
