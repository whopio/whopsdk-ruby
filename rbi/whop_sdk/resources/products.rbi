# typed: strong

module WhopSDK
  module Resources
    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to search the public marketplace, list an account's
    # products, retrieve a product, and create, update, or delete products.
    class Products
      # Creates a new product for an account.
      sig do
        params(
          title: String,
          account_id: String,
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta:
            T.nilable(WhopSDK::ProductCreateParams::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            WhopSDK::ProductCreateParams::GlobalAffiliateStatus::OrSymbol,
          headline: T.nilable(String),
          labels: T.nilable(T::Array[String]),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            WhopSDK::ProductCreateParams::MemberAffiliateStatus::OrSymbol,
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          visibility: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def create(
        # Body param: The display name of the product. Maximum 80 characters.
        title:,
        # Body param: The unique identifier of the account to create this product for.
        account_id: nil,
        # Body param: Whether to collect a shipping address at checkout.
        collect_shipping_address: nil,
        # Body param: The call-to-action button label.
        custom_cta: nil,
        # Body param: A URL the call-to-action button links to.
        custom_cta_url: nil,
        # Body param: Custom bank statement descriptor. Must start with WHOP\*.
        custom_statement_descriptor: nil,
        # Body param: A written description displayed on the product page.
        description: nil,
        # Body param: The commission rate affiliates earn.
        global_affiliate_percentage: nil,
        # Body param: The enrollment status in the global affiliate program.
        global_affiliate_status: nil,
        # Body param: A short marketing headline for the product page.
        headline: nil,
        # Body param: Labels used to group products into collections. Stored lowercased
        # and de-duplicated. Maximum 20 labels, 50 characters each.
        labels: nil,
        # Body param: The commission rate members earn.
        member_affiliate_percentage: nil,
        # Body param: The enrollment status in the member affiliate program.
        member_affiliate_status: nil,
        # Body param: Custom key-value pairs to store on the product.
        metadata: nil,
        # Body param: The unique identifier of the tax classification code. See the
        # available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Body param: A URL to redirect the customer to after purchase.
        redirect_purchase_url: nil,
        # Body param: The URL slug for the product's public link.
        route: nil,
        # Body param: Whether to send an automated welcome message via support chat when a
        # user joins this product. Defaults to true.
        send_welcome_message: nil,
        # Body param: Whether the product is visible to customers.
        visibility: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a product. Public — no credentials.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def retrieve(
        # The unique identifier of the product.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Updates an existing product.
      sig do
        params(
          id: String,
          banner_image:
            T.nilable(WhopSDK::ProductUpdateParams::BannerImage::OrHash),
          description: T.nilable(String),
          headline: T.nilable(String),
          labels: T.nilable(T::Array[String]),
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          title: String,
          visibility: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def update(
        # Path param: The unique identifier of the product.
        id,
        # Body param: A wide image for the product, shown on the product page and on
        # listing cards. Pass `{ id }` for an existing attachment or
        # `{ direct_upload_id }` for a completed direct upload; `null` removes it.
        banner_image: nil,
        # Body param: A written description displayed on the product page.
        description: nil,
        # Body param: A short marketing headline for the product page.
        headline: nil,
        # Body param: Labels used to group products into collections. Replaces the
        # existing labels. Send an empty array to clear them.
        labels: nil,
        # Body param: Custom key-value pairs to store on the product.
        metadata: nil,
        # Body param: The unique identifier of the tax classification code. See the
        # available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Body param: Whether to send an automated welcome message via support chat when a
        # user joins this product.
        send_welcome_message: nil,
        # Body param: The display name of the product.
        title: nil,
        # Body param: Whether the product is visible to customers.
        visibility: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of products. Omit `account_id` to search the public
      # marketplace.
      sig do
        params(
          access_pass_types: T::Array[String],
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::ProductListParams::Direction::OrSymbol,
          first: Integer,
          labels: T::Array[String],
          last: Integer,
          marketplace_category_route: String,
          order: String,
          plan_types: T::Array[WhopSDK::ProductListParams::PlanType::OrSymbol],
          price_maximum: Float,
          price_minimum: Float,
          query: String,
          visibilities: T::Array[String],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::ProductListItem])
      end
      def list(
        # Query param: Filter to only products matching these types.
        access_pass_types: nil,
        # Query param: The unique identifier of the account to list products for. Omit to
        # search the public marketplace.
        account_id: nil,
        # Query param: A cursor; returns products after this position.
        after: nil,
        # Query param: A cursor; returns products before this position.
        before: nil,
        # Query param: Only return products created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only return products created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: The sort direction for results. Defaults to descending.
        direction: nil,
        # Query param: The number of products to return (default and max 100).
        first: nil,
        # Query param: Filter to only products carrying all of these labels. Labels are
        # matched lowercased.
        labels: nil,
        # Query param: The number of products to return from the end of the range.
        last: nil,
        # Query param: Only return marketplace products assigned to this category route,
        # such as `trading`.
        marketplace_category_route: nil,
        # Query param: The field to sort results by. Account lists default to
        # `created_at`. Marketplace lists default to `discoverable_at` and accept
        # `created_at` or `discoverable_at`. Cannot be combined with `query`.
        order: nil,
        # Query param: Filter to products with a buyable plan of these billing models,
        # such as `one_time` or `renewal`.
        plan_types: nil,
        # Query param: Only return products whose advertised buyable plan has a displayed
        # price of at most this amount. Recurring plans use renewal price.
        price_maximum: nil,
        # Query param: Only return products whose advertised buyable plan has a displayed
        # price of at least this amount. Recurring plans use renewal price.
        price_minimum: nil,
        # Query param: Ranked search against product title and headline. Omit to browse by
        # recency.
        query: nil,
        # Query param: Filter to only products matching these visibility states. Ignored
        # on the public marketplace list, which only returns visible products.
        visibilities: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Deletes a product. Only products with no memberships, entries, reviews, or
      # invoices can be deleted.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::ProductDeleteResponse)
      end
      def delete(
        # The unique identifier of the product.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
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
