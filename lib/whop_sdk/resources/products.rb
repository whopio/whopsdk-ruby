# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to search the public marketplace, list an account's
    # products, retrieve a product, and create, update, or delete products.
    class Products
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductCreateParams} for more details.
      #
      # Creates a new product for an account.
      #
      # @overload create(title:, account_id: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, labels: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, metadata: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, send_welcome_message: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param title [String] Body param: The display name of the product. Maximum 80 characters.
      #
      # @param account_id [String] Body param: The unique identifier of the account to create this product for.
      #
      # @param collect_shipping_address [Boolean, nil] Body param: Whether to collect a shipping address at checkout.
      #
      # @param custom_cta [Symbol, WhopSDK::Models::ProductCreateParams::CustomCta, nil] Body param: The call-to-action button label.
      #
      # @param custom_cta_url [String, nil] Body param: A URL the call-to-action button links to.
      #
      # @param custom_statement_descriptor [String, nil] Body param: Custom bank statement descriptor. Must start with WHOP\*.
      #
      # @param description [String, nil] Body param: A written description displayed on the product page.
      #
      # @param global_affiliate_percentage [Float, nil] Body param: The commission rate affiliates earn.
      #
      # @param global_affiliate_status [Symbol, WhopSDK::Models::ProductCreateParams::GlobalAffiliateStatus] Body param: The enrollment status in the global affiliate program.
      #
      # @param headline [String, nil] Body param: A short marketing headline for the product page.
      #
      # @param labels [Array<String>, nil] Body param: Labels used to group products into collections. Stored lowercased an
      #
      # @param member_affiliate_percentage [Float, nil] Body param: The commission rate members earn.
      #
      # @param member_affiliate_status [Symbol, WhopSDK::Models::ProductCreateParams::MemberAffiliateStatus] Body param: The enrollment status in the member affiliate program.
      #
      # @param metadata [Object, nil] Body param: Custom key-value pairs to store on the product.
      #
      # @param product_tax_code_id [String, nil] Body param: The unique identifier of the tax classification code. See the availa
      #
      # @param redirect_purchase_url [String, nil] Body param: A URL to redirect the customer to after purchase.
      #
      # @param route [String, nil] Body param: The URL slug for the product's public link.
      #
      # @param send_welcome_message [Boolean, nil] Body param: Whether to send an automated welcome message via support chat when a
      #
      # @param visibility [String] Body param: Whether the product is visible to customers.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductCreateParams
      def create(params)
        parsed, options = WhopSDK::ProductCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "products",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Product,
          options: options
        )
      end

      # Retrieves a product. Public — no credentials.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the product.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::ProductRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["products/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Product,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductUpdateParams} for more details.
      #
      # Updates an existing product.
      #
      # @overload update(id, banner_image: nil, description: nil, headline: nil, labels: nil, metadata: nil, product_tax_code_id: nil, send_welcome_message: nil, title: nil, visibility: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: The unique identifier of the product.
      #
      # @param banner_image [WhopSDK::Models::ProductUpdateParams::BannerImage, nil] Body param: A wide image for the product, shown on the product page and on listi
      #
      # @param description [String, nil] Body param: A written description displayed on the product page.
      #
      # @param headline [String, nil] Body param: A short marketing headline for the product page.
      #
      # @param labels [Array<String>, nil] Body param: Labels used to group products into collections. Replaces the existin
      #
      # @param metadata [Object, nil] Body param: Custom key-value pairs to store on the product.
      #
      # @param product_tax_code_id [String, nil] Body param: The unique identifier of the tax classification code. See the availa
      #
      # @param send_welcome_message [Boolean, nil] Body param: Whether to send an automated welcome message via support chat when a
      #
      # @param title [String] Body param: The display name of the product.
      #
      # @param visibility [String] Body param: Whether the product is visible to customers.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Product]
      #
      # @see WhopSDK::Models::ProductUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ProductUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["products/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Product,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductListParams} for more details.
      #
      # Returns a paginated list of products. Omit `account_id` to search the public
      # marketplace.
      #
      # @overload list(access_pass_types: nil, account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, labels: nil, last: nil, marketplace_category_route: nil, order: nil, plan_types: nil, price_maximum: nil, price_minimum: nil, query: nil, visibilities: nil, api_version_date: nil, request_options: {})
      #
      # @param access_pass_types [Array<String>] Query param: Filter to only products matching these types.
      #
      # @param account_id [String] Query param: The unique identifier of the account to list products for. Omit to
      #
      # @param after [String] Query param: A cursor; returns products after this position.
      #
      # @param before [String] Query param: A cursor; returns products before this position.
      #
      # @param created_after [String] Query param: Only return products created after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only return products created before this ISO 8601 timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::ProductListParams::Direction] Query param: The sort direction for results. Defaults to descending.
      #
      # @param first [Integer] Query param: The number of products to return (default and max 100).
      #
      # @param labels [Array<String>] Query param: Filter to only products carrying all of these labels. Labels are ma
      #
      # @param last [Integer] Query param: The number of products to return from the end of the range.
      #
      # @param marketplace_category_route [String] Query param: Only return marketplace products assigned to this category route, s
      #
      # @param order [String] Query param: The field to sort results by. Account lists default to `created_at`
      #
      # @param plan_types [Array<Symbol, WhopSDK::Models::ProductListParams::PlanType>] Query param: Filter to products with a buyable plan of these billing models, suc
      #
      # @param price_maximum [Float] Query param: Only return products whose advertised buyable plan has a displayed
      #
      # @param price_minimum [Float] Query param: Only return products whose advertised buyable plan has a displayed
      #
      # @param query [String] Query param: Ranked search against product title and headline. Omit to browse by
      #
      # @param visibilities [Array<String>] Query param: Filter to only products matching these visibility states. Ignored o
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ProductListItem>]
      #
      # @see WhopSDK::Models::ProductListParams
      def list(params = {})
        query_params =
          [
            :access_pass_types,
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :direction,
            :first,
            :labels,
            :last,
            :marketplace_category_route,
            :order,
            :plan_types,
            :price_maximum,
            :price_minimum,
            :query,
            :visibilities
          ]
        parsed, options = WhopSDK::ProductListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "products",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::ProductListItem,
          options: options
        )
      end

      # Deletes a product. Only products with no memberships, entries, reviews, or
      # invoices can be deleted.
      #
      # @overload delete(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the product.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::ProductDeleteResponse]
      #
      # @see WhopSDK::Models::ProductDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::ProductDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["products/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::ProductDeleteResponse,
          options: options
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
