# typed: strong

module WhopSDK
  module Models
    class PaymentTokenRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentTokenRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the Member associated with the PaymentToken
      sig { returns(String) }
      attr_accessor :member_id

      sig do
        params(
          member_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the Member associated with the PaymentToken
        member_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { member_id: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
