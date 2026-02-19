# frozen_string_literal: true

module WhopSDK
  module Resources
    class Products
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::ProductCreateParams} for more details.
      #
      # Create a new product for a company. The product serves as the top-level
      # container for plans and experiences.
      #
      # Required permissions:
      #
      # - `access_pass:create`
      # - `access_pass:basic:read`
      #
      # @overload create(company_id:, title:, business_type: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, experience_ids: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_group: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, plan_options: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create this product for.
      #
      # @param title [String] The display name of the product. Maximum 40 characters.
      #
      # @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      # @param collect_shipping_address [Boolean, nil] Whether the checkout flow collects a shipping address from the customer.
      #
      # @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      # @param custom_cta_url [String, nil] A URL that the call-to-action button links to instead of the default checkout fl
      #
      # @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank statement. Must be 5-22
      #
      # @param description [String, nil] A written description of the product displayed on its product page.
      #
      # @param experience_ids [Array<String>, nil] The unique identifiers of experiences to connect to this product.
      #
      # @param global_affiliate_percentage [Float, nil] The commission rate as a percentage that affiliates earn through the global affi
      #
      # @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      # @param headline [String, nil] A short marketing headline displayed prominently on the product page.
      #
      # @param industry_group [Symbol, WhopSDK::Models::IndustryGroups, nil] The different industry groups a company can be in.
      #
      # @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      # @param member_affiliate_percentage [Float, nil] The commission rate as a percentage that members earn through the member affilia
      #
      # @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      # @param plan_options [WhopSDK::Models::ProductCreateParams::PlanOptions, nil] Configuration for an automatically generated plan to attach to this product.
      #
      # @param product_tax_code_id [String, nil] The unique identifier of the tax classification code to apply to this product.
      #
      # @param redirect_purchase_url [String, nil] A URL to redirect the customer to after completing a purchase.
      #
      # @param route [String, nil] The URL slug for the product's public link.
      #
      # @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
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

      # Retrieves the details of an existing product.
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier or route slug of the product.
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
      # Update a product's title, description, visibility, and other settings.
      #
      # Required permissions:
      #
      # - `access_pass:update`
      # - `access_pass:basic:read`
      #
      # @overload update(id, business_type: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, gallery_images: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_group: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, store_page_config: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the product to update.
      #
      # @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      # @param collect_shipping_address [Boolean, nil] Whether the checkout flow collects a shipping address from the customer.
      #
      # @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      # @param custom_cta_url [String, nil] A URL that the call-to-action button links to instead of the default checkout fl
      #
      # @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank statement. Must be 5-22
      #
      # @param description [String, nil] A written description of the product displayed on its product page.
      #
      # @param gallery_images [Array<WhopSDK::Models::ProductUpdateParams::GalleryImage>, nil] The gallery images for the product.
      #
      # @param global_affiliate_percentage [Float, nil] The commission rate as a percentage that affiliates earn through the global affi
      #
      # @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      # @param headline [String, nil] A short marketing headline displayed prominently on the product page.
      #
      # @param industry_group [Symbol, WhopSDK::Models::IndustryGroups, nil] The different industry groups a company can be in.
      #
      # @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      # @param member_affiliate_percentage [Float, nil] The commission rate as a percentage that members earn through the member affilia
      #
      # @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      # @param product_tax_code_id [String, nil] The unique identifier of the tax classification code to apply to this product.
      #
      # @param redirect_purchase_url [String, nil] A URL to redirect the customer to after completing a purchase.
      #
      # @param route [String, nil] The URL slug for the product's public link.
      #
      # @param store_page_config [WhopSDK::Models::ProductUpdateParams::StorePageConfig, nil] Layout and display configuration for this product on the company's store page.
      #
      # @param title [String, nil] The display name of the product. Maximum 40 characters.
      #
      # @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
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

      # Returns a paginated list of products belonging to a company, with optional
      # filtering by type, visibility, and creation date.
      #
      # Required permissions:
      #
      # - `access_pass:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_types: nil, visibilities: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list products for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return products created after this timestamp.
      #
      # @param created_before [Time, nil] Only return products created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::ProductListParams::Order, nil] The ways a relation of AccessPasses can be ordered
      #
      # @param product_types [Array<Symbol, WhopSDK::Models::AccessPassType>, nil] Filter to only products matching these type classifications.
      #
      # @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil] Filter to only products matching these visibility states.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ProductListItem>]
      #
      # @see WhopSDK::Models::ProductListParams
      def list(params)
        parsed, options = WhopSDK::ProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "products",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::ProductListItem,
          options: options
        )
      end

      # Permanently delete a product and remove it from the company's catalog.
      #
      # Required permissions:
      #
      # - `access_pass:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the product to delete.
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
