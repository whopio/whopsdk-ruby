# typed: strong

module WhopSDK
  module Models
    class RefundListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::RefundListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the refund.
      sig { returns(String) }
      attr_accessor :id

      # The refunded amount as a decimal in the specified currency, such as 10.43 for
      # $10.43 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the refund was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The three-letter ISO currency code for the refunded amount.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The original payment that this refund was issued against. Null if the payment is
      # no longer available.
      sig { returns(T.nilable(WhopSDK::Models::RefundListResponse::Payment)) }
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(WhopSDK::Models::RefundListResponse::Payment::OrHash)
        ).void
      end
      attr_writer :payment

      # The payment provider that processed the refund.
      sig { returns(WhopSDK::PaymentProvider::TaggedSymbol) }
      attr_accessor :provider

      # The timestamp when the refund was created in the payment provider's system. Null
      # if not available from the provider.
      sig { returns(T.nilable(Time)) }
      attr_accessor :provider_created_at

      # The status of the refund reference.
      sig { returns(T.nilable(WhopSDK::RefundReferenceStatus::TaggedSymbol)) }
      attr_accessor :reference_status

      # The type of refund reference that was made available by the payment provider.
      sig { returns(T.nilable(WhopSDK::RefundReferenceType::TaggedSymbol)) }
      attr_accessor :reference_type

      # The tracking reference value from the payment processor, used to trace the
      # refund through banking networks. Null if no reference was provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_value

      # The current processing status of the refund, such as pending, succeeded, or
      # failed.
      sig { returns(WhopSDK::RefundStatus::TaggedSymbol) }
      attr_accessor :status

      # A refund represents a full or partial reversal of a payment, including the
      # amount, status, and payment provider.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          payment:
            T.nilable(WhopSDK::Models::RefundListResponse::Payment::OrHash),
          provider: WhopSDK::PaymentProvider::OrSymbol,
          provider_created_at: T.nilable(Time),
          reference_status: T.nilable(WhopSDK::RefundReferenceStatus::OrSymbol),
          reference_type: T.nilable(WhopSDK::RefundReferenceType::OrSymbol),
          reference_value: T.nilable(String),
          status: WhopSDK::RefundStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the refund.
        id:,
        # The refunded amount as a decimal in the specified currency, such as 10.43 for
        # $10.43 USD.
        amount:,
        # The datetime the refund was created.
        created_at:,
        # The three-letter ISO currency code for the refunded amount.
        currency:,
        # The original payment that this refund was issued against. Null if the payment is
        # no longer available.
        payment:,
        # The payment provider that processed the refund.
        provider:,
        # The timestamp when the refund was created in the payment provider's system. Null
        # if not available from the provider.
        provider_created_at:,
        # The status of the refund reference.
        reference_status:,
        # The type of refund reference that was made available by the payment provider.
        reference_type:,
        # The tracking reference value from the payment processor, used to trace the
        # refund through banking networks. Null if no reference was provided.
        reference_value:,
        # The current processing status of the refund, such as pending, succeeded, or
        # failed.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            payment: T.nilable(WhopSDK::Models::RefundListResponse::Payment),
            provider: WhopSDK::PaymentProvider::TaggedSymbol,
            provider_created_at: T.nilable(Time),
            reference_status:
              T.nilable(WhopSDK::RefundReferenceStatus::TaggedSymbol),
            reference_type:
              T.nilable(WhopSDK::RefundReferenceType::TaggedSymbol),
            reference_value: T.nilable(String),
            status: WhopSDK::RefundStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::RefundListResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The original payment that this refund was issued against. Null if the payment is
        # no longer available.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the payment.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
