# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#create
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute title
      #   The display name of the product. Maximum 80 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute collect_shipping_address
      #   Whether to collect a shipping address at checkout.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute company_id
      #   The unique identifier of the company to create this product for.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute custom_cta
      #   The call-to-action button label.
      #
      #   @return [String, nil]
      optional :custom_cta, String, nil?: true

      # @!attribute custom_cta_url
      #   A URL the call-to-action button links to.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   Custom bank statement descriptor. Must start with WHOP\*.
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description displayed on the product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute global_affiliate_percentage
      #   The commission rate affiliates earn.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The enrollment status in the global affiliate program.
      #
      #   @return [String, nil]
      optional :global_affiliate_status, String

      # @!attribute headline
      #   A short marketing headline for the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate members earn.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The enrollment status in the member affiliate program.
      #
      #   @return [String, nil]
      optional :member_affiliate_status, String

      # @!attribute metadata
      #   Custom key-value pairs to store on the product.
      #
      #   @return [Object, nil]
      optional :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute product_tax_code_id
      #   The unique identifier of the tax classification code. See the available
      #   [product categories](https://docs.numeral.com/essentials/product-categories).
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   A URL to redirect the customer to after purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The URL slug for the product's public link.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute send_welcome_message
      #   Whether to send an automated welcome message via support chat when a user joins
      #   this product. Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :send_welcome_message, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute visibility
      #   Whether the product is visible to customers.
      #
      #   @return [String, nil]
      optional :visibility, String

      # @!method initialize(title:, collect_shipping_address: nil, company_id: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, metadata: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, send_welcome_message: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductCreateParams} for more details.
      #
      #   @param title [String] The display name of the product. Maximum 80 characters.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether to collect a shipping address at checkout.
      #
      #   @param company_id [String] The unique identifier of the company to create this product for.
      #
      #   @param custom_cta [String, nil] The call-to-action button label.
      #
      #   @param custom_cta_url [String, nil] A URL the call-to-action button links to.
      #
      #   @param custom_statement_descriptor [String, nil] Custom bank statement descriptor. Must start with WHOP\*.
      #
      #   @param description [String, nil] A written description displayed on the product page.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate affiliates earn.
      #
      #   @param global_affiliate_status [String] The enrollment status in the global affiliate program.
      #
      #   @param headline [String, nil] A short marketing headline for the product page.
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate members earn.
      #
      #   @param member_affiliate_status [String] The enrollment status in the member affiliate program.
      #
      #   @param metadata [Object, nil] Custom key-value pairs to store on the product.
      #
      #   @param product_tax_code_id [String, nil] The unique identifier of the tax classification code. See the available [product
      #
      #   @param redirect_purchase_url [String, nil] A URL to redirect the customer to after purchase.
      #
      #   @param route [String, nil] The URL slug for the product's public link.
      #
      #   @param send_welcome_message [Boolean, nil] Whether to send an automated welcome message via support chat when a user joins
      #
      #   @param visibility [String] Whether the product is visible to customers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
