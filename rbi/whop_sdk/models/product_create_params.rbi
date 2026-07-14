# typed: strong

module WhopSDK
  module Models
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The display name of the product. Maximum 80 characters.
      sig { returns(String) }
      attr_accessor :title

      # Whether to collect a shipping address at checkout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The unique identifier of the company to create this product for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # The call-to-action button label.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta

      # A URL the call-to-action button links to.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # Custom bank statement descriptor. Must start with WHOP\*.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description displayed on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The commission rate affiliates earn.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The enrollment status in the global affiliate program.
      sig { returns(T.nilable(String)) }
      attr_reader :global_affiliate_status

      sig { params(global_affiliate_status: String).void }
      attr_writer :global_affiliate_status

      # A short marketing headline for the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The commission rate members earn.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The enrollment status in the member affiliate program.
      sig { returns(T.nilable(String)) }
      attr_reader :member_affiliate_status

      sig { params(member_affiliate_status: String).void }
      attr_writer :member_affiliate_status

      # Custom key-value pairs to store on the product.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The unique identifier of the tax classification code. See the available
      # [product categories](https://docs.numeral.com/essentials/product-categories).
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether to send an automated welcome message via support chat when a user joins
      # this product. Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_welcome_message

      # Whether the product is visible to customers.
      sig { returns(T.nilable(String)) }
      attr_reader :visibility

      sig { params(visibility: String).void }
      attr_writer :visibility

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
