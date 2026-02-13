# typed: strong

module WhopSDK
  module Models
    class TopupCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::TopupCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the payment.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the payment was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # If the payment failed, the reason for the failure.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_message

      # The time at which this payment was successfully collected. Null if the payment
      # has not yet succeeded. As a Unix timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :paid_at

      # The status of a receipt
      sig { returns(T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol)) }
      attr_accessor :status

      # The total to show to the creator (excluding buyer fees).
      sig { returns(T.nilable(Float)) }
      attr_accessor :total

      # A payment represents a completed or attempted charge. Payments track the amount,
      # status, currency, and payment method used.
      sig do
        params(
          id: String,
          created_at: Time,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          failure_message: T.nilable(String),
          paid_at: T.nilable(Time),
          status: T.nilable(WhopSDK::ReceiptStatus::OrSymbol),
          total: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the payment.
        id:,
        # The datetime the payment was created.
        created_at:,
        # The available currencies on the platform
        currency:,
        # If the payment failed, the reason for the failure.
        failure_message:,
        # The time at which this payment was successfully collected. Null if the payment
        # has not yet succeeded. As a Unix timestamp.
        paid_at:,
        # The status of a receipt
        status:,
        # The total to show to the creator (excluding buyer fees).
        total:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            failure_message: T.nilable(String),
            paid_at: T.nilable(Time),
            status: T.nilable(WhopSDK::ReceiptStatus::TaggedSymbol),
            total: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
