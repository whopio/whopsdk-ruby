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

      # The banner image for the company in png or jpeg format
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

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The logo for the company in png, jpeg, or gif format
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # Whether Whop sends transactional emails to customers on behalf of this company.
      # Includes: order confirmations, payment failures, refund notifications, upcoming
      # renewals, and membership cancelations/expirations. When disabled, the platform
      # is responsible for handling these communications.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      # The title of the company
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          send_customer_emails: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The banner image for the company in png or jpeg format
        banner_image: nil,
        # The different business types a company can be.
        business_type: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Includes: order confirmations, payment failures, refund notifications, upcoming
        # renewals, and membership cancelations/expirations. When disabled, the platform
        # is responsible for handling these communications.
        send_customer_emails: nil,
        # The title of the company
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            banner_image: T.nilable(WhopSDK::CompanyUpdateParams::BannerImage),
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
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

        # The banner image for the company in png or jpeg format
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

        # The logo for the company in png, jpeg, or gif format
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
