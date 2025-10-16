# typed: strong

module WhopSDK
  module Models
    class PaymentRefundParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentRefundParams, WhopSDK::Internal::AnyHash)
        end

      # An amount if the refund is supposed to be partial.
      sig { returns(T.nilable(Float)) }
      attr_accessor :partial_amount

      sig do
        params(
          partial_amount: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An amount if the refund is supposed to be partial.
        partial_amount: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            partial_amount: T.nilable(Float),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
