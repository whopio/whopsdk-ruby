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

      # The amount to refund in the payment currency. If omitted, the full payment
      # amount is refunded.
      sig { returns(T.nilable(Float)) }
      attr_accessor :partial_amount

      sig do
        params(
          partial_amount: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount to refund in the payment currency. If omitted, the full payment
        # amount is refunded.
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
