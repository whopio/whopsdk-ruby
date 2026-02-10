# typed: strong

module WhopSDK
  module Models
    class PaymentMethodRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PaymentMethodRetrieveParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier of the company. Provide either this or member_id, not
      # both.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The unique identifier of the member. Provide either this or company_id, not
      # both.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      sig do
        params(
          company_id: T.nilable(String),
          member_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company. Provide either this or member_id, not
        # both.
        company_id: nil,
        # The unique identifier of the member. Provide either this or company_id, not
        # both.
        member_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: T.nilable(String),
            member_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
