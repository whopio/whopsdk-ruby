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

      sig { returns(String) }
      attr_accessor :id

      # The unique identifier of the company. Provide either this or member_id, not
      # both. Omit both to address your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The unique identifier of the member. Provide either this or company_id, not
      # both. Omit both to address your own saved payment methods.
      sig { returns(T.nilable(String)) }
      attr_reader :member_id

      sig { params(member_id: String).void }
      attr_writer :member_id

      sig do
        params(
          id: String,
          account_id: String,
          member_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The unique identifier of the company. Provide either this or member_id, not
        # both. Omit both to address your own saved payment methods.
        account_id: nil,
        # The unique identifier of the member. Provide either this or company_id, not
        # both. Omit both to address your own saved payment methods.
        member_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            member_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
