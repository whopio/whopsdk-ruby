# typed: strong

module WhopSDK
  module Models
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The company's banner image. Accepts PNG or JPEG format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # A promotional pitch displayed to potential customers on the company's store
      # page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The different industry groups a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryGroups::OrSymbol)) }
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # The unique URL slug for the company's store page. Must be lowercase and can
      # include hyphens (e.g., 'my-company'). If not provided, the route will remain
      # unchanged.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      # customers on behalf of this company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      # The target audience for this company (e.g., 'beginner day traders aged 18-25
      # looking to learn options').
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the company shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          route: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          target_audience: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The company's banner image. Accepts PNG or JPEG format.
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # The unique URL slug for the company's store page. Must be lowercase and can
        # include hyphens (e.g., 'my-company'). If not provided, the route will remain
        # unchanged.
        route: nil,
        # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
        # customers on behalf of this company.
        send_customer_emails: nil,
        # The target audience for this company (e.g., 'beginner day traders aged 18-25
        # looking to learn options').
        target_audience: nil,
        # The display name of the company shown to customers.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image: T.nilable(WhopSDK::CompanyUpdateParams::BannerImage),
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            description: T.nilable(String),
            industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo),
            route: T.nilable(String),
            send_customer_emails: T.nilable(T::Boolean),
            target_audience: T.nilable(String),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::BannerImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's banner image. Accepts PNG or JPEG format.
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

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's logo image. Accepts PNG, JPEG, or GIF format.
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
    end
  end
end
