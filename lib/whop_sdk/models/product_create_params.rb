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

      # @!attribute account_id
      #   The unique identifier of the account to create this product for.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute collect_shipping_address
      #   Whether to collect a shipping address at checkout.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute custom_cta
      #   The call-to-action button label.
      #
      #   @return [Symbol, WhopSDK::Models::ProductCreateParams::CustomCta, nil]
      optional :custom_cta, enum: -> { WhopSDK::ProductCreateParams::CustomCta }, nil?: true

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
      #   @return [Symbol, WhopSDK::Models::ProductCreateParams::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { WhopSDK::ProductCreateParams::GlobalAffiliateStatus }

      # @!attribute headline
      #   A short marketing headline for the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute labels
      #   Labels used to group products into collections. Stored lowercased and
      #   de-duplicated. Maximum 20 labels, 50 characters each.
      #
      #   @return [Array<String>, nil]
      optional :labels, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate members earn.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The enrollment status in the member affiliate program.
      #
      #   @return [Symbol, WhopSDK::Models::ProductCreateParams::MemberAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { WhopSDK::ProductCreateParams::MemberAffiliateStatus }

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

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(title:, account_id: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, labels: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, metadata: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, send_welcome_message: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductCreateParams} for more details.
      #
      #   @param title [String] The display name of the product. Maximum 80 characters.
      #
      #   @param account_id [String] The unique identifier of the account to create this product for.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether to collect a shipping address at checkout.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::ProductCreateParams::CustomCta, nil] The call-to-action button label.
      #
      #   @param custom_cta_url [String, nil] A URL the call-to-action button links to.
      #
      #   @param custom_statement_descriptor [String, nil] Custom bank statement descriptor. Must start with WHOP\*.
      #
      #   @param description [String, nil] A written description displayed on the product page.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate affiliates earn.
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::ProductCreateParams::GlobalAffiliateStatus] The enrollment status in the global affiliate program.
      #
      #   @param headline [String, nil] A short marketing headline for the product page.
      #
      #   @param labels [Array<String>, nil] Labels used to group products into collections. Stored lowercased and de-duplica
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate members earn.
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::ProductCreateParams::MemberAffiliateStatus] The enrollment status in the member affiliate program.
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
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The call-to-action button label.
      module CustomCta
        extend WhopSDK::Internal::Type::Enum

        GET_ACCESS = :get_access
        JOIN = :join
        ORDER_NOW = :order_now
        SHOP_NOW = :shop_now
        CALL_NOW = :call_now
        DONATE_NOW = :donate_now
        CONTACT_US = :contact_us
        SIGN_UP = :sign_up
        SUBSCRIBE = :subscribe
        PURCHASE = :purchase
        GET_OFFER = :get_offer
        APPLY_NOW = :apply_now
        COMPLETE_ORDER = :complete_order

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The enrollment status in the global affiliate program.
      module GlobalAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The enrollment status in the member affiliate program.
      module MemberAffiliateStatus
        extend WhopSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
