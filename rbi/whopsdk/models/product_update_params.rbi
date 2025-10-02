# typed: strong

module Whopsdk
  module Models
    class ProductUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ProductUpdateParams, Whopsdk::Internal::AnyHash)
        end

      # A banner image for the access pass in png, jpeg format
      sig { returns(T.nilable(Whopsdk::ProductUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(Whopsdk::ProductUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # The different business types a company can be.
      sig { returns(T.nilable(Whopsdk::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # The different types of custom CTAs that can be selected.
      sig { returns(T.nilable(Whopsdk::CustomCta::OrSymbol)) }
      attr_accessor :custom_cta

      # The custom call to action URL for the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # The custom statement descriptor for the access pass i.e. WHOP\*SPORTS, must be
      # between 5 and 22 characters, contain at least one letter, and not contain any of
      # the following characters: <, >, \, ', "
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The percentage of the revenue that goes to the global affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The different statuses of the global affiliate program for an access pass.
      sig { returns(T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :global_affiliate_status

      # The headline of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry types a company can be in.
      sig { returns(T.nilable(Whopsdk::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The percentage of the revenue that goes to the member affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The different statuses of the global affiliate program for an access pass.
      sig { returns(T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :member_affiliate_status

      # The ID of the product tax code to apply to this access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # The URL to redirect the customer to after a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The route of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # The title of the access pass.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Visibility of a resource
      sig { returns(T.nilable(Whopsdk::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          banner_image:
            T.nilable(Whopsdk::ProductUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
          custom_cta: T.nilable(Whopsdk::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          title: T.nilable(String),
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A banner image for the access pass in png, jpeg format
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # The custom call to action URL for the access pass.
        custom_cta_url: nil,
        # The custom statement descriptor for the access pass i.e. WHOP\*SPORTS, must be
        # between 5 and 22 characters, contain at least one letter, and not contain any of
        # the following characters: <, >, \, ', "
        custom_statement_descriptor: nil,
        # A written description of the access pass.
        description: nil,
        # The percentage of the revenue that goes to the global affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for an access pass.
        global_affiliate_status: nil,
        # The headline of the access pass.
        headline: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The percentage of the revenue that goes to the member affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for an access pass.
        member_affiliate_status: nil,
        # The ID of the product tax code to apply to this access pass.
        product_tax_code_id: nil,
        # The URL to redirect the customer to after a purchase.
        redirect_purchase_url: nil,
        # The route of the access pass.
        route: nil,
        # The title of the access pass.
        title: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image: T.nilable(Whopsdk::ProductUpdateParams::BannerImage),
            business_type: T.nilable(Whopsdk::BusinessTypes::OrSymbol),
            custom_cta: T.nilable(Whopsdk::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
            industry_type: T.nilable(Whopsdk::IndustryTypes::OrSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(Whopsdk::GlobalAffiliateStatus::OrSymbol),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            title: T.nilable(String),
            visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::ProductUpdateParams::BannerImage,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID of an existing attachment object. Use this when updating a resource and
        # keeping a subset of the attachments. Don't use this unless you know what you're
        # doing.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # This ID should be used the first time you upload an attachment. It is the ID of
        # the direct upload that was created when uploading the file to S3 via the
        # mediaDirectUpload mutation.
        sig { returns(T.nilable(String)) }
        attr_accessor :direct_upload_id

        # A banner image for the access pass in png, jpeg format
        sig do
          params(
            id: T.nilable(String),
            direct_upload_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          id: nil,
          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          direct_upload_id: nil
        )
        end

        sig do
          override.returns(
            { id: T.nilable(String), direct_upload_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
