# typed: strong

module WhopSDK
  module Models
    class PaymentRetrieveResponse < WhopSDK::Models::Payment
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The credential the buyer's surface presents to poll this payment and set its
      # return URL. Returned when a payment created from a confirmation token is created
      # or retrieved by a caller with the payment:charge permission. Null for payments
      # created from a stored payment method or callers without payment:charge. It
      # unlocks this payment and nothing else; treat it like a password for that one
      # attempt.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # A payment represents a completed or attempted charge. Payments track the amount,
      # status, currency, and payment method used.
      sig { params(client_secret: T.nilable(String)).returns(T.attached_class) }
      def self.new(
        # The credential the buyer's surface presents to poll this payment and set its
        # return URL. Returned when a payment created from a confirmation token is created
        # or retrieved by a caller with the payment:charge permission. Null for payments
        # created from a stored payment method or callers without payment:charge. It
        # unlocks this payment and nothing else; treat it like a password for that one
        # attempt.
        client_secret:
      )
      end

      sig { override.returns({ client_secret: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
