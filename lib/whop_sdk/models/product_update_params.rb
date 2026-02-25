# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#update
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute collect_shipping_address
      #   Whether the checkout flow collects a shipping address from the customer.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute custom_cta
      #   The different types of custom CTAs that can be selected.
      #
      #   @return [Symbol, WhopSDK::Models::CustomCta, nil]
      optional :custom_cta, enum: -> { WhopSDK::CustomCta }, nil?: true

      # @!attribute custom_cta_url
      #   A URL that the call-to-action button links to instead of the default checkout
      #   flow.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   A custom text label that appears on the customer's bank statement. Must be 5-22
      #   characters, contain at least one letter, and not contain <, >, \, ', or "
      #   characters.
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description of the product displayed on its product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute gallery_images
      #   The gallery images for the product.
      #
      #   @return [Array<WhopSDK::Models::ProductUpdateParams::GalleryImage>, nil]
      optional :gallery_images,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductUpdateParams::GalleryImage] },
               nil?: true

      # @!attribute global_affiliate_percentage
      #   The commission rate as a percentage that affiliates earn through the global
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute headline
      #   A short marketing headline displayed prominently on the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate as a percentage that members earn through the member
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute product_tax_code_id
      #   The unique identifier of the tax classification code to apply to this product.
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   A URL to redirect the customer to after completing a purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The URL slug for the product's public link.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute store_page_config
      #   Layout and display configuration for this product on the company's store page.
      #
      #   @return [WhopSDK::Models::ProductUpdateParams::StorePageConfig, nil]
      optional :store_page_config, -> { WhopSDK::ProductUpdateParams::StorePageConfig }, nil?: true

      # @!attribute title
      #   The display name of the product. Maximum 40 characters.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, WhopSDK::Models::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

      # @!method initialize(collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, gallery_images: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, store_page_config: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductUpdateParams} for more details.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether the checkout flow collects a shipping address from the customer.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      #   @param custom_cta_url [String, nil] A URL that the call-to-action button links to instead of the default checkout fl
      #
      #   @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank statement. Must be 5-22
      #
      #   @param description [String, nil] A written description of the product displayed on its product page.
      #
      #   @param gallery_images [Array<WhopSDK::Models::ProductUpdateParams::GalleryImage>, nil] The gallery images for the product.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate as a percentage that affiliates earn through the global affi
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product page.
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate as a percentage that members earn through the member affilia
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param product_tax_code_id [String, nil] The unique identifier of the tax classification code to apply to this product.
      #
      #   @param redirect_purchase_url [String, nil] A URL to redirect the customer to after completing a purchase.
      #
      #   @param route [String, nil] The URL slug for the product's public link.
      #
      #   @param store_page_config [WhopSDK::Models::ProductUpdateParams::StorePageConfig, nil] Layout and display configuration for this product on the company's store page.
      #
      #   @param title [String, nil] The display name of the product. Maximum 40 characters.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Input for an attachment
        #
        #   @param id [String] The ID of an existing file object.
      end

      class StorePageConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute custom_cta
        #   Custom call-to-action text for the product's store page.
        #
        #   @return [String, nil]
        optional :custom_cta, String, nil?: true

        # @!attribute show_price
        #   Whether or not to show the price on the product's store page.
        #
        #   @return [Boolean, nil]
        optional :show_price, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!method initialize(custom_cta: nil, show_price: nil)
        #   Layout and display configuration for this product on the company's store page.
        #
        #   @param custom_cta [String, nil] Custom call-to-action text for the product's store page.
        #
        #   @param show_price [Boolean, nil] Whether or not to show the price on the product's store page.
      end
    end
  end
end
