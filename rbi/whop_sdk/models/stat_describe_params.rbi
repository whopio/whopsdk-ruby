# typed: strong

module WhopSDK
  module Models
    class StatDescribeParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::StatDescribeParams, WhopSDK::Internal::AnyHash)
        end

      # Scope query to a specific company.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Resource path using : as separator (e.g., 'receipts', 'payments:membership',
      # 'receipts:gross_revenue').
      sig { returns(T.nilable(String)) }
      attr_accessor :resource

      # Scope query to a specific user.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: T.nilable(String),
          resource: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Scope query to a specific company.
        company_id: nil,
        # Resource path using : as separator (e.g., 'receipts', 'payments:membership',
        # 'receipts:gross_revenue').
        resource: nil,
        # Scope query to a specific user.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: T.nilable(String),
            resource: T.nilable(String),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
