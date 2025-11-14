# typed: strong

module WhopSDK
  module Models
    class RefundListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::RefundListResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the refund.
      sig { returns(String) }
      attr_accessor :id

      # The amount of the refund.
      sig { returns(Float) }
      attr_accessor :amount

      # The time the refund was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the refund.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The payment associated with the refund.
      sig { returns(T.nilable(WhopSDK::Models::RefundListResponse::Payment)) }
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(WhopSDK::Models::RefundListResponse::Payment::OrHash)
        ).void
      end
      attr_writer :payment

      # The provider of the refund.
      sig { returns(WhopSDK::PaymentProvider::TaggedSymbol) }
      attr_accessor :provider

      # The time the refund was created by the provider.
      sig { returns(T.nilable(Time)) }
      attr_accessor :provider_created_at

      # The status of the refund reference.
      sig { returns(T.nilable(WhopSDK::RefundReferenceStatus::TaggedSymbol)) }
      attr_accessor :reference_status

      # The type of refund reference that was made available by the payment provider.
      sig { returns(T.nilable(WhopSDK::RefundReferenceType::TaggedSymbol)) }
      attr_accessor :reference_type

      # The value of the reference.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_value

      # The status of the refund.
      sig { returns(WhopSDK::RefundStatus::TaggedSymbol) }
      attr_accessor :status

      # An object representing a refund made on a payment.
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
        # The ID of the refund.
        id:,
        # The amount of the refund.
        amount:,
        # The time the refund was created.
        created_at:,
        # The currency of the refund.
        currency:,
        # The payment associated with the refund.
        payment:,
        # The provider of the refund.
        provider:,
        # The time the refund was created by the provider.
        provider_created_at:,
        # The status of the refund reference.
        reference_status:,
        # The type of refund reference that was made available by the payment provider.
        reference_type:,
        # The value of the reference.
        reference_value:,
        # The status of the refund.
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

        # The payment ID
        sig { returns(String) }
        attr_accessor :id

        # The payment associated with the refund.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The payment ID
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
