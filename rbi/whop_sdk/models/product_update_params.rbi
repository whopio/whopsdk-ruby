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

      # A banner image for the product in png, jpeg format
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithDirectUploadID,
              WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :banner_image

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # Whether or not to collect shipping information at checkout from the customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The different types of custom CTAs that can be selected.
      sig { returns(T.nilable(WhopSDK::CustomCta::OrSymbol)) }
      attr_accessor :custom_cta

      # The custom call to action URL for the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
      # between 5 and 22 characters, contain at least one letter, and not contain any of
      # the following characters: <, >, \, ', "
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description of the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The percentage of the revenue that goes to the global affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The different statuses of the global affiliate program for an access pass.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :global_affiliate_status

      # The headline of the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The percentage of the revenue that goes to the member affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The different statuses of the global affiliate program for an access pass.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :member_affiliate_status

      # The ID of the product tax code to apply to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # The URL to redirect the customer to after a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The route of the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Configuration for a product on the company's store page.
      sig { returns(T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig)) }
      attr_reader :store_page_config

      sig do
        params(
          store_page_config:
            T.nilable(WhopSDK::ProductUpdateParams::StorePageConfig::OrHash)
        ).void
      end
      attr_writer :store_page_config

      # The title of the product.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          banner_image:
            T.nilable(
              T.any(
                WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithID::OrHash
              )
            ),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
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
        # A banner image for the product in png, jpeg format
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # Whether or not to collect shipping information at checkout from the customer.
        collect_shipping_address: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # The custom call to action URL for the product.
        custom_cta_url: nil,
        # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
        # between 5 and 22 characters, contain at least one letter, and not contain any of
        # the following characters: <, >, \, ', "
        custom_statement_descriptor: nil,
        # A written description of the product.
        description: nil,
        # The percentage of the revenue that goes to the global affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for an access pass.
        global_affiliate_status: nil,
        # The headline of the product.
        headline: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The percentage of the revenue that goes to the member affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for an access pass.
        member_affiliate_status: nil,
        # The ID of the product tax code to apply to this product.
        product_tax_code_id: nil,
        # The URL to redirect the customer to after a purchase.
        redirect_purchase_url: nil,
        # The route of the product.
        route: nil,
        # Configuration for a product on the company's store page.
        store_page_config: nil,
        # The title of the product.
        title: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image:
              T.nilable(
                T.any(
                  WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithDirectUploadID,
                  WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithID
                )
              ),
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
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

      # A banner image for the product in png, jpeg format
      module BannerImage
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithDirectUploadID,
              WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductUpdateParams::BannerImage::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::ProductUpdateParams::BannerImage::Variants]
          )
        end
        def self.variants
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

        # Configuration for a product on the company's store page.
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
