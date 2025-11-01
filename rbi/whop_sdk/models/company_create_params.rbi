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

      # Additional metadata for the account
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig do
        params(
          email: String,
          parent_company_id: String,
          title: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
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
        # Additional metadata for the account
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            parent_company_id: String,
            title: String,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
