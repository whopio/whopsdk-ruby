# typed: strong

module Whopsdk
  module Models
    class PaymentRefundParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::PaymentRefundParams, Whopsdk::Internal::AnyHash)
        end

      # refund_payment | An amount if the refund is supposed to be partial.
      sig { returns(T.nilable(Float)) }
      attr_accessor :partial_amount

      sig do
        params(
          partial_amount: T.nilable(Float),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # refund_payment | An amount if the refund is supposed to be partial.
        partial_amount: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            partial_amount: T.nilable(Float),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
