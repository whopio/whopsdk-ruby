# typed: strong

module WhopSDK
  module Resources
    # Products
    class Products
      # Create a new product for a company. The product serves as the top-level
      # container for plans and experiences.
      #
      # Required permissions:
      #
      # - `access_pass:create`
      # - `access_pass:basic:read`
      sig do
        params(
          company_id: String,
          title: String,
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          experience_ids: T.nilable(T::Array[String]),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          plan_options:
            T.nilable(WhopSDK::ProductCreateParams::PlanOptions::OrHash),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def create(
        # The unique identifier of the company to create this product for.
        company_id:,
        # The display name of the product. Maximum 40 characters.
        title:,
        # Whether the checkout flow collects a shipping address from the customer.
        collect_shipping_address: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # A URL that the call-to-action button links to instead of the default checkout
        # flow.
        custom_cta_url: nil,
        # A custom text label that appears on the customer's bank statement. Must be 5-22
        # characters, contain at least one letter, and not contain <, >, \, ', or "
        # characters.
        custom_statement_descriptor: nil,
        # A written description of the product displayed on its product page.
        description: nil,
        # The unique identifiers of experiences to connect to this product.
        experience_ids: nil,
        # The commission rate as a percentage that affiliates earn through the global
        # affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        global_affiliate_status: nil,
        # A short marketing headline displayed prominently on the product page.
        headline: nil,
        # The commission rate as a percentage that members earn through the member
        # affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        member_affiliate_status: nil,
        # Configuration for an automatically generated plan to attach to this product.
        plan_options: nil,
        # The unique identifier of the tax classification code to apply to this product.
        product_tax_code_id: nil,
        # A URL to redirect the customer to after completing a purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing product.
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def retrieve(
        # The unique identifier or route slug of the product.
        id,
        request_options: {}
      )
      end

      # Update a product's title, description, visibility, and other settings.
      #
      # Required permissions:
      #
      # - `access_pass:update`
      # - `access_pass:basic:read`
      sig do
        params(
          id: String,
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          gallery_images:
            T.nilable(
              T::Array[WhopSDK::ProductUpdateParams::GalleryImage::OrHash]
            ),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          store_page_config:
            T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Product)
      end
      def update(
        # The unique identifier of the product to update.
        id,
        # Whether the checkout flow collects a shipping address from the customer.
        collect_shipping_address: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # A URL that the call-to-action button links to instead of the default checkout
        # flow.
        custom_cta_url: nil,
        # A custom text label that appears on the customer's bank statement. Must be 5-22
        # characters, contain at least one letter, and not contain <, >, \, ', or "
        # characters.
        custom_statement_descriptor: nil,
        # A written description of the product displayed on its product page.
        description: nil,
        # The gallery images for the product.
        gallery_images: nil,
        # The commission rate as a percentage that affiliates earn through the global
        # affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        global_affiliate_status: nil,
        # A short marketing headline displayed prominently on the product page.
        headline: nil,
        # The commission rate as a percentage that members earn through the member
        # affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        member_affiliate_status: nil,
        # The unique identifier of the tax classification code to apply to this product.
        product_tax_code_id: nil,
        # A URL to redirect the customer to after completing a purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Layout and display configuration for this product on the company's store page.
        store_page_config: nil,
        # The display name of the product. Maximum 40 characters.
        title: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of products belonging to a company, with optional
      # filtering by type, visibility, and creation date.
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
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
          order: T.nilable(WhopSDK::ProductListParams::Order::OrSymbol),
          product_types: T.nilable(T::Array[WhopSDK::AccessPassType::OrSymbol]),
          visibilities:
            T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::ProductListItem])
      end
      def list(
        # The unique identifier of the company to list products for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return products created after this timestamp.
        created_after: nil,
        # Only return products created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ways a relation of AccessPasses can be ordered
        order: nil,
        # Filter to only products matching these type classifications.
        product_types: nil,
        # Filter to only products matching these visibility states.
        visibilities: nil,
        request_options: {}
      )
      end

      # Permanently delete a product and remove it from the company's catalog.
      #
      # Required permissions:
      #
      # - `access_pass:delete`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the product to delete.
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
