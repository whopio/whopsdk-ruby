# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to create products, list products visible to your
    # credentials, retrieve product details, update product metadata or merchandising
    # fields, and delete products that should no longer be sold.
    class Products
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductCreateParams} for more details.
      #
      # Creates a new product for a company.
      #
      # @overload create(title:, collect_shipping_address: nil, company_id: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, metadata: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, send_welcome_message: nil, visibility: nil, request_options: {})
      #
      # @param title [String] The display name of the product. Maximum 80 characters.
      #
      # @param collect_shipping_address [Boolean, nil] Whether to collect a shipping address at checkout.
      #
      # @param company_id [String] The unique identifier of the company to create this product for.
      #
      # @param custom_cta [String, nil] The call-to-action button label.
      #
      # @param custom_cta_url [String, nil] A URL the call-to-action button links to.
      #
      # @param custom_statement_descriptor [String, nil] Custom bank statement descriptor. Must start with WHOP\*.
      #
      # @param description [String, nil] A written description displayed on the product page.
      #
      # @param global_affiliate_percentage [Float, nil] The commission rate affiliates earn.
      #
      # @param global_affiliate_status [String] The enrollment status in the global affiliate program.
      #
      # @param headline [String, nil] A short marketing headline for the product page.
      #
      # @param member_affiliate_percentage [Float, nil] The commission rate members earn.
      #
      # @param member_affiliate_status [String] The enrollment status in the member affiliate program.
      #
      # @param metadata [Object, nil] Custom key-value pairs to store on the product.
      #
      # @param product_tax_code_id [String, nil] The unique identifier of the tax classification code. See the available [product
      #
      # @param redirect_purchase_url [String, nil] A URL to redirect the customer to after purchase.
      #
      # @param route [String, nil] The URL slug for the product's public link.
      #
      # @param send_welcome_message [Boolean, nil] Whether to send an automated welcome message via support chat when a user joins
      #
      # @param visibility [String] Whether the product is visible to customers.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductCreateParams
      def create(params)
        parsed, options = WhopSDK::ProductCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "products",
          body: parsed,
          model: WhopSDK::Product,
          options: options
        )
      end

      # Retrieves the details of an existing product. This endpoint is publicly
      # accessible.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the product.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["products/%1$s", id],
          model: WhopSDK::Product,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductUpdateParams} for more details.
      #
      # Updates an existing product.
      #
      # @overload update(id, description: nil, headline: nil, metadata: nil, product_tax_code_id: nil, send_welcome_message: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the product.
      #
      # @param description [String, nil] A written description displayed on the product page.
      #
      # @param headline [String, nil] A short marketing headline for the product page.
      #
      # @param metadata [Object, nil] Custom key-value pairs to store on the product.
      #
      # @param product_tax_code_id [String, nil] The unique identifier of the tax classification code. See the available [product
      #
      # @param send_welcome_message [Boolean, nil] Whether to send an automated welcome message via support chat when a user joins
      #
      # @param title [String] The display name of the product.
      #
      # @param visibility [String] Whether the product is visible to customers.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ProductUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["products/%1$s", id],
          body: parsed,
          model: WhopSDK::Product,
          options: options
        )
      end

      # Returns a paginated list of products belonging to a company.
      #
      # @overload list(company_id:, access_pass_types: nil, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list products for.
      #
      # @param access_pass_types [Array<String>] Filter to only products matching these types.
      #
      # @param after [String] A cursor; returns products after this position.
      #
      # @param before [String] A cursor; returns products before this position.
      #
      # @param direction [Symbol, WhopSDK::Models::ProductListParams::Direction] The sort direction for results. Defaults to descending.
      #
      # @param first [Integer] The number of products to return (default and max 100).
      #
      # @param last [Integer] The number of products to return from the end of the range.
      #
      # @param order [String] The field to sort results by. Defaults to created_at.
      #
      # @param visibilities [Array<String>] Filter to only products matching these visibility states.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ProductListItem>]
      #
      # @see WhopSDK::Models::ProductListParams
      def list(params)
        parsed, options = WhopSDK::ProductListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "products",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::ProductListItem,
          options: options
        )
      end

      # Deletes a product. Only products with no memberships, entries, reviews, or
      # invoices can be deleted.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the product.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::ProductDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["products/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
