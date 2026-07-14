# typed: strong

module WhopSDK
  module Resources
    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to create products, list products visible to your
    # credentials, retrieve product details, update product metadata or merchandising
    # fields, and delete products that should no longer be sold.
    class Products
      # Creates a new product for a company.
      sig do
        params(
          title: String,
          collect_shipping_address: T.nilable(T::Boolean),
          company_id: String,
          custom_cta: T.nilable(String),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status: String,
          headline: T.nilable(String),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status: String,
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def create(
        # The display name of the product. Maximum 80 characters.
        title:,
        # Whether to collect a shipping address at checkout.
        collect_shipping_address: nil,
        # The unique identifier of the company to create this product for.
        company_id: nil,
        # The call-to-action button label.
        custom_cta: nil,
        # A URL the call-to-action button links to.
        custom_cta_url: nil,
        # Custom bank statement descriptor. Must start with WHOP\*.
        custom_statement_descriptor: nil,
        # A written description displayed on the product page.
        description: nil,
        # The commission rate affiliates earn.
        global_affiliate_percentage: nil,
        # The enrollment status in the global affiliate program.
        global_affiliate_status: nil,
        # A short marketing headline for the product page.
        headline: nil,
        # The commission rate members earn.
        member_affiliate_percentage: nil,
        # The enrollment status in the member affiliate program.
        member_affiliate_status: nil,
        # Custom key-value pairs to store on the product.
        metadata: nil,
        # The unique identifier of the tax classification code. See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # A URL to redirect the customer to after purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Whether to send an automated welcome message via support chat when a user joins
        # this product. Defaults to true.
        send_welcome_message: nil,
        # Whether the product is visible to customers.
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing product. This endpoint is publicly
      # accessible.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def retrieve(
        # The unique identifier of the product.
        id,
        request_options: {}
      )
      end

      # Updates an existing product.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          headline: T.nilable(String),
          metadata: T.nilable(T.anything),
          product_tax_code_id: T.nilable(String),
          send_welcome_message: T.nilable(T::Boolean),
          title: String,
          visibility: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def update(
        # The unique identifier of the product.
        id,
        # A written description displayed on the product page.
        description: nil,
        # A short marketing headline for the product page.
        headline: nil,
        # Custom key-value pairs to store on the product.
        metadata: nil,
        # The unique identifier of the tax classification code. See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Whether to send an automated welcome message via support chat when a user joins
        # this product.
        send_welcome_message: nil,
        # The display name of the product.
        title: nil,
        # Whether the product is visible to customers.
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of products belonging to a company.
      sig do
        params(
          company_id: String,
          access_pass_types: T::Array[String],
          after: String,
          before: String,
          direction: WhopSDK::ProductListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: String,
          visibilities: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::ProductListItem])
      end
      def list(
        # The unique identifier of the company to list products for.
        company_id:,
        # Filter to only products matching these types.
        access_pass_types: nil,
        # A cursor; returns products after this position.
        after: nil,
        # A cursor; returns products before this position.
        before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # The number of products to return (default and max 100).
        first: nil,
        # The number of products to return from the end of the range.
        last: nil,
        # The field to sort results by. Defaults to created_at.
        order: nil,
        # Filter to only products matching these visibility states.
        visibilities: nil,
        request_options: {}
      )
      end

      # Deletes a product. Only products with no memberships, entries, reviews, or
      # invoices can be deleted.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the product.
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
