# typed: strong

module WhopSDK
  module Models
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The email of the user who the company will belong to.
      sig { returns(String) }
      attr_accessor :email

      # The company ID of the platform creating this company.
      sig { returns(String) }
      attr_accessor :parent_company_id

      # The name of the company being created.
      sig { returns(String) }
      attr_accessor :title

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The logo for the company in png, jpeg, or gif format
      sig { returns(T.nilable(WhopSDK::CompanyCreateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # Additional metadata for the account
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Whether Whop sends transactional emails to customers on behalf of this company.
      # Includes: order confirmations, payment failures, refund notifications, upcoming
      # renewals, and membership cancelations/expirations. When disabled, the platform
      # is responsible for handling these communications. This is defaulted to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      sig do
        params(
          email: String,
          parent_company_id: String,
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The email of the user who the company will belong to.
        email:,
        # The company ID of the platform creating this company.
        parent_company_id:,
        # The name of the company being created.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # Additional metadata for the account
        metadata: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Includes: order confirmations, payment failures, refund notifications, upcoming
        # renewals, and membership cancelations/expirations. When disabled, the platform
        # is responsible for handling these communications. This is defaulted to true.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            parent_company_id: String,
            title: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyCreateParams::Logo),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            send_customer_emails: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyCreateParams::Logo,
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
