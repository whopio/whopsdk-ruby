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

      # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      # customers on behalf of this company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      # The display name of the company shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          send_customer_emails: T.nilable(T::Boolean),
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
        # The different industry types a company can be in.
        industry_type: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
        # customers on behalf of this company.
        send_customer_emails: nil,
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
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo),
            send_customer_emails: T.nilable(T::Boolean),
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
