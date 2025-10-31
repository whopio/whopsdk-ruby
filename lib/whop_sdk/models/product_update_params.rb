# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#update
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute banner_image
      #   A banner image for the product in png, jpeg format
      #
      #   @return [WhopSDK::Models::ProductUpdateParams::BannerImage, nil]
      optional :banner_image, -> { WhopSDK::ProductUpdateParams::BannerImage }

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute collect_shipping_address
      #   Whether or not to collect shipping information at checkout from the customer.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute custom_cta
      #   The different types of custom CTAs that can be selected.
      #
      #   @return [Symbol, WhopSDK::Models::CustomCta, nil]
      optional :custom_cta, enum: -> { WhopSDK::CustomCta }, nil?: true

      # @!attribute custom_cta_url
      #   The custom call to action URL for the product.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
      #   between 5 and 22 characters, contain at least one letter, and not contain any of
      #   the following characters: <, >, \, ', "
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description of the product.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute global_affiliate_percentage
      #   The percentage of the revenue that goes to the global affiliate program.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The different statuses of the global affiliate program for an access pass.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute headline
      #   The headline of the product.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The percentage of the revenue that goes to the member affiliate program.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The different statuses of the global affiliate program for an access pass.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute product_tax_code_id
      #   The ID of the product tax code to apply to this product.
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   The URL to redirect the customer to after a purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The route of the product.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute store_page_config
      #   Configuration for a product on the company's store page.
      #
      #   @return [WhopSDK::Models::ProductUpdateParams::StorePageConfig, nil]
      optional :store_page_config, -> { WhopSDK::ProductUpdateParams::StorePageConfig }, nil?: true

      # @!attribute title
      #   The title of the product.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, WhopSDK::Models::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

      # @!method initialize(banner_image: nil, business_type: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, store_page_config: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductUpdateParams} for more details.
      #
      #   @param banner_image [WhopSDK::Models::ProductUpdateParams::BannerImage] A banner image for the product in png, jpeg format
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether or not to collect shipping information at checkout from the customer.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      #   @param custom_cta_url [String, nil] The custom call to action URL for the product.
      #
      #   @param custom_statement_descriptor [String, nil] The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
      #   betwee
      #
      #   @param description [String, nil] A written description of the product.
      #
      #   @param global_affiliate_percentage [Float, nil] The percentage of the revenue that goes to the global affiliate program.
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for an access pass.
      #
      #   @param headline [String, nil] The headline of the product.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The percentage of the revenue that goes to the member affiliate program.
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for an access pass.
      #
      #   @param product_tax_code_id [String, nil] The ID of the product tax code to apply to this product.
      #
      #   @param redirect_purchase_url [String, nil] The URL to redirect the customer to after a purchase.
      #
      #   @param route [String, nil] The route of the product.
      #
      #   @param store_page_config [WhopSDK::Models::ProductUpdateParams::StorePageConfig, nil] Configuration for a product on the company's store page.
      #
      #   @param title [String, nil] The title of the product.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductUpdateParams::BannerImage} for more details.
        #
        #   A banner image for the product in png, jpeg format
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
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
        #   Configuration for a product on the company's store page.
        #
        #   @param custom_cta [String, nil] Custom call-to-action text for the product's store page.
        #
        #   @param show_price [Boolean, nil] Whether or not to show the price on the product's store page.
      end
    end
  end
end
