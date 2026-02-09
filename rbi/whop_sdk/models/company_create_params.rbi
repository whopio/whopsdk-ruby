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

      # The name of the company being created.
      sig { returns(String) }
      attr_accessor :title

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # A description of what the company offers or does.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The email of the user who the sub-company will belong to. Required when
      # parent_company_id is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

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

      # Additional metadata for the company
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The company ID of the platform creating this sub-company. If omitted, the
      # company is created for the current user.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_company_id

      # Whether Whop sends transactional emails to customers on behalf of this company.
      # Only used when parent_company_id is provided.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      sig do
        params(
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          description: T.nilable(String),
          email: T.nilable(String),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          logo: T.nilable(WhopSDK::CompanyCreateParams::Logo::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          parent_company_id: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the company being created.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # A description of what the company offers or does.
        description: nil,
        # The email of the user who the sub-company will belong to. Required when
        # parent_company_id is provided.
        email: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The logo for the company in png, jpeg, or gif format
        logo: nil,
        # Additional metadata for the company
        metadata: nil,
        # The company ID of the platform creating this sub-company. If omitted, the
        # company is created for the current user.
        parent_company_id: nil,
        # Whether Whop sends transactional emails to customers on behalf of this company.
        # Only used when parent_company_id is provided.
        send_customer_emails: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            title: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            description: T.nilable(String),
            email: T.nilable(String),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            logo: T.nilable(WhopSDK::CompanyCreateParams::Logo),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            parent_company_id: T.nilable(String),
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
