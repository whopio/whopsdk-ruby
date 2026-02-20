# typed: strong

module WhopSDK
  module Models
    class DisputeAlertListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DisputeAlertListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier of the dispute alert.
      sig { returns(String) }
      attr_accessor :id

      # The type of the dispute alert.
      sig { returns(WhopSDK::DisputeAlertType::TaggedSymbol) }
      attr_accessor :alert_type

      # The alerted amount in the specified currency.
      sig { returns(Float) }
      attr_accessor :amount

      # Whether this alert incurs a charge.
      sig { returns(T::Boolean) }
      attr_accessor :charge_for_alert

      # The time the dispute alert was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The three-letter ISO currency code for the alerted amount.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The dispute associated with the dispute alert.
      sig do
        returns(T.nilable(WhopSDK::Models::DisputeAlertListResponse::Dispute))
      end
      attr_reader :dispute

      sig do
        params(
          dispute:
            T.nilable(
              WhopSDK::Models::DisputeAlertListResponse::Dispute::OrHash
            )
        ).void
      end
      attr_writer :dispute

      # The payment associated with the dispute alert.
      sig do
        returns(T.nilable(WhopSDK::Models::DisputeAlertListResponse::Payment))
      end
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(
              WhopSDK::Models::DisputeAlertListResponse::Payment::OrHash
            )
        ).void
      end
      attr_writer :payment

      # The date of the original transaction.
      sig { returns(T.nilable(Time)) }
      attr_accessor :transaction_date

      # A dispute alert represents an early warning notification from a payment
      # processor about a potential dispute or chargeback.
      sig do
        params(
          id: String,
          alert_type: WhopSDK::DisputeAlertType::OrSymbol,
          amount: Float,
          charge_for_alert: T::Boolean,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          dispute:
            T.nilable(
              WhopSDK::Models::DisputeAlertListResponse::Dispute::OrHash
            ),
          payment:
            T.nilable(
              WhopSDK::Models::DisputeAlertListResponse::Payment::OrHash
            ),
          transaction_date: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the dispute alert.
        id:,
        # The type of the dispute alert.
        alert_type:,
        # The alerted amount in the specified currency.
        amount:,
        # Whether this alert incurs a charge.
        charge_for_alert:,
        # The time the dispute alert was created.
        created_at:,
        # The three-letter ISO currency code for the alerted amount.
        currency:,
        # The dispute associated with the dispute alert.
        dispute:,
        # The payment associated with the dispute alert.
        payment:,
        # The date of the original transaction.
        transaction_date:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            alert_type: WhopSDK::DisputeAlertType::TaggedSymbol,
            amount: Float,
            charge_for_alert: T::Boolean,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            dispute:
              T.nilable(WhopSDK::Models::DisputeAlertListResponse::Dispute),
            payment:
              T.nilable(WhopSDK::Models::DisputeAlertListResponse::Payment),
            transaction_date: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class Dispute < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeAlertListResponse::Dispute,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the dispute.
        sig { returns(String) }
        attr_accessor :id

        # The dispute associated with the dispute alert.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the dispute.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeAlertListResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The payment associated with the dispute alert.
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
