# typed: strong

module WhopSDK
  module Models
    class ProductUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # Whether the checkout flow collects a shipping address from the customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The different types of custom CTAs that can be selected.
      sig { returns(T.nilable(WhopSDK::CustomCta::OrSymbol)) }
      attr_accessor :custom_cta

      # A URL that the call-to-action button links to instead of the default checkout
      # flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # A custom text label that appears on the customer's bank statement. Must be 5-22
      # characters, contain at least one letter, and not contain <, >, \, ', or "
      # characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description of the product displayed on its product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The gallery images for the product.
      sig do
        returns(T.nilable(T::Array[WhopSDK::ProductUpdateParams::GalleryImage]))
      end
      attr_accessor :gallery_images

      # The commission rate as a percentage that affiliates earn through the global
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :global_affiliate_status

      # A short marketing headline displayed prominently on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry groups a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryGroups::OrSymbol)) }
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The commission rate as a percentage that members earn through the member
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :member_affiliate_status

      # The unique identifier of the tax classification code to apply to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after completing a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Layout and display configuration for this product on the company's store page.
      sig { returns(T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig)) }
      attr_reader :store_page_config

      sig do
        params(
          store_page_config:
            T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig::OrHash)
        ).void
      end
      attr_writer :store_page_config

      # The display name of the product. Maximum 40 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
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
          industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
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
        ).returns(T.attached_class)
      end
      def self.new(
        # The different business types a company can be.
        business_type: nil,
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
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
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

      sig do
        override.returns(
          {
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            gallery_images:
              T.nilable(T::Array[WhopSDK::ProductUpdateParams::GalleryImage]),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
            industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            store_page_config:
              T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig),
            title: T.nilable(String),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class GalleryImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::GalleryImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # Input for an attachment
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class StorePageConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::StorePageConfig,
              WhopSDK::Internal::AnyHash
            )
          end

        # Custom call-to-action text for the product's store page.
        sig { returns(T.nilable(String)) }
        attr_accessor :custom_cta

        # Whether or not to show the price on the product's store page.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :show_price

        # Layout and display configuration for this product on the company's store page.
        sig do
          params(
            custom_cta: T.nilable(String),
            show_price: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom call-to-action text for the product's store page.
          custom_cta: nil,
          # Whether or not to show the price on the product's store page.
          show_price: nil
        )
        end

        sig do
          override.returns(
            { custom_cta: T.nilable(String), show_price: T.nilable(T::Boolean) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
