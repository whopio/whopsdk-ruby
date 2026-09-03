# typed: strong

module WhopSDK
  module Models
    class RefundListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::RefundListResponse, WhopSDK::Internal::AnyHash)
        end

      # Refund ID, prefixed `rf_`.
      sig { returns(String) }
      attr_accessor :id

      # The account that issued the refund, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # The refunded amount as it settled, in the payment's settlement currency, so
      # pages of refunds net against the payment's `refunded_amount`. Converted at the
      # rate in force when the refund was issued, not the payment's original rate. Null
      # only when no exchange rate is recorded for a legacy multi-currency payment.
      sig { returns(T.nilable(WhopSDK::Models::RefundListResponse::Amount)) }
      attr_reader :amount

      sig do
        params(
          amount: T.nilable(WhopSDK::Models::RefundListResponse::Amount::OrHash)
        ).void
      end
      attr_writer :amount

      # When the refund was requested, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # The provider's own explanation of the failure, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :failure_message

      # Why the refund failed, normalized across providers. Null unless the refund
      # failed or was canceled.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        )
      end
      attr_accessor :failure_reason

      # The refunded amount in the currency the processor moved.
      sig { returns(WhopSDK::Models::RefundListResponse::OriginalAmount) }
      attr_reader :original_amount

      sig do
        params(
          original_amount:
            WhopSDK::Models::RefundListResponse::OriginalAmount::OrHash
        ).void
      end
      attr_writer :original_amount

      # The payment this refund reverses, prefixed `pay_`.
      sig { returns(String) }
      attr_accessor :payment_id

      # The payment provider that processed the refund, such as `paypal` or `coinbase`.
      sig { returns(String) }
      attr_accessor :provider

      # When the provider created the refund, as an ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_accessor :provider_created_at

      # Why the refund was issued, when recorded.
      sig do
        returns(
          T.nilable(WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol)
        )
      end
      attr_accessor :reason

      # Whether a banking-network tracking reference is available for this refund.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :reference_status

      # The kind of tracking reference, such as an acquirer reference number.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
          )
        )
      end
      attr_accessor :reference_type

      # The tracking reference the buyer's bank can trace the refund by.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_value

      # Where the refund stands with the processor: `pending`, `requires_action`,
      # `succeeded`, `failed`, or `canceled`.
      sig { returns(WhopSDK::Models::RefundListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # When the refund last changed, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # True when the card network initiated the refund through Rapid Dispute
      # Resolution.
      sig { returns(T::Boolean) }
      attr_accessor :visa_rdr

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          amount:
            T.nilable(WhopSDK::Models::RefundListResponse::Amount::OrHash),
          created_at: String,
          failure_message: T.nilable(String),
          failure_reason:
            T.nilable(
              WhopSDK::Models::RefundListResponse::FailureReason::OrSymbol
            ),
          original_amount:
            WhopSDK::Models::RefundListResponse::OriginalAmount::OrHash,
          payment_id: String,
          provider: String,
          provider_created_at: T.nilable(String),
          reason:
            T.nilable(WhopSDK::Models::RefundListResponse::Reason::OrSymbol),
          reference_status:
            T.nilable(
              WhopSDK::Models::RefundListResponse::ReferenceStatus::OrSymbol
            ),
          reference_type:
            T.nilable(
              WhopSDK::Models::RefundListResponse::ReferenceType::OrSymbol
            ),
          reference_value: T.nilable(String),
          status: WhopSDK::Models::RefundListResponse::Status::OrSymbol,
          updated_at: String,
          visa_rdr: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Refund ID, prefixed `rf_`.
        id:,
        # The account that issued the refund, prefixed `biz_`.
        account_id:,
        # The refunded amount as it settled, in the payment's settlement currency, so
        # pages of refunds net against the payment's `refunded_amount`. Converted at the
        # rate in force when the refund was issued, not the payment's original rate. Null
        # only when no exchange rate is recorded for a legacy multi-currency payment.
        amount:,
        # When the refund was requested, as an ISO 8601 timestamp.
        created_at:,
        # The provider's own explanation of the failure, or null.
        failure_message:,
        # Why the refund failed, normalized across providers. Null unless the refund
        # failed or was canceled.
        failure_reason:,
        # The refunded amount in the currency the processor moved.
        original_amount:,
        # The payment this refund reverses, prefixed `pay_`.
        payment_id:,
        # The payment provider that processed the refund, such as `paypal` or `coinbase`.
        provider:,
        # When the provider created the refund, as an ISO 8601 timestamp.
        provider_created_at:,
        # Why the refund was issued, when recorded.
        reason:,
        # Whether a banking-network tracking reference is available for this refund.
        reference_status:,
        # The kind of tracking reference, such as an acquirer reference number.
        reference_type:,
        # The tracking reference the buyer's bank can trace the refund by.
        reference_value:,
        # Where the refund stands with the processor: `pending`, `requires_action`,
        # `succeeded`, `failed`, or `canceled`.
        status:,
        # When the refund last changed, as an ISO 8601 timestamp.
        updated_at:,
        # True when the card network initiated the refund through Rapid Dispute
        # Resolution.
        visa_rdr:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            amount: T.nilable(WhopSDK::Models::RefundListResponse::Amount),
            created_at: String,
            failure_message: T.nilable(String),
            failure_reason:
              T.nilable(
                WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
              ),
            original_amount:
              WhopSDK::Models::RefundListResponse::OriginalAmount,
            payment_id: String,
            provider: String,
            provider_created_at: T.nilable(String),
            reason:
              T.nilable(
                WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol
              ),
            reference_status:
              T.nilable(
                WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
              ),
            reference_type:
              T.nilable(
                WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
              ),
            reference_value: T.nilable(String),
            status: WhopSDK::Models::RefundListResponse::Status::TaggedSymbol,
            updated_at: String,
            visa_rdr: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Amount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::RefundListResponse::Amount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The refunded amount as it settled, in the payment's settlement currency, so
        # pages of refunds net against the payment's `refunded_amount`. Converted at the
        # rate in force when the refund was issued, not the payment's original rate. Null
        # only when no exchange rate is recorded for a legacy multi-currency payment.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Why the refund failed, normalized across providers. Null unless the refund
      # failed or was canceled.
      module FailureReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::RefundListResponse::FailureReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BANK_DECLINED =
          T.let(
            :bank_declined,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        EXPIRED_OR_CANCELED_CARD =
          T.let(
            :expired_or_canceled_card,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        LOST_OR_STOLEN_CARD =
          T.let(
            :lost_or_stolen_card,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        CHARGE_DISPUTED =
          T.let(
            :charge_disputed,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        NOT_REFUNDABLE =
          T.let(
            :not_refundable,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        MERCHANT_REQUEST =
          T.let(
            :merchant_request,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :unknown,
            WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::RefundListResponse::FailureReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class OriginalAmount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::RefundListResponse::OriginalAmount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The amount in major units, as an exact decimal string — `"10.00"` is ten
        # dollars. A string so no float rounds it in transit.
        sig { returns(String) }
        attr_accessor :amount

        # Three-letter ISO 4217 currency code, lowercase.
        sig { returns(String) }
        attr_accessor :currency

        # How many decimal places the amount CARRIES — the precision the charge itself
        # runs at.
        sig { returns(Integer) }
        attr_accessor :decimals

        # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        # not always: COP is charged in centavos but written in whole pesos, so it is `2`
        # and `0`. Format the number in your own locale using this.
        sig { returns(Integer) }
        attr_accessor :display_decimals

        # The refunded amount in the currency the processor moved.
        sig do
          params(
            amount: String,
            currency: String,
            decimals: Integer,
            display_decimals: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount in major units, as an exact decimal string — `"10.00"` is ten
          # dollars. A string so no float rounds it in transit.
          amount:,
          # Three-letter ISO 4217 currency code, lowercase.
          currency:,
          # How many decimal places the amount CARRIES — the precision the charge itself
          # runs at.
          decimals:,
          # How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
          # not always: COP is charged in centavos but written in whole pesos, so it is `2`
          # and `0`. Format the number in your own locale using this.
          display_decimals:
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              currency: String,
              decimals: Integer,
              display_decimals: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Why the refund was issued, when recorded.
      module Reason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::RefundListResponse::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DUPLICATE =
          T.let(
            :duplicate,
            WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol
          )
        FRAUDULENT =
          T.let(
            :fraudulent,
            WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol
          )
        REQUESTED_BY_CUSTOMER =
          T.let(
            :requested_by_customer,
            WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol
          )
        EXPIRED_UNCAPTURED_CHARGE =
          T.let(
            :expired_uncaptured_charge,
            WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::RefundListResponse::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether a banking-network tracking reference is available for this refund.
      module ReferenceStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::RefundListResponse::ReferenceStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
          )
        UNAVAILABLE =
          T.let(
            :unavailable,
            WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::RefundListResponse::ReferenceStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The kind of tracking reference, such as an acquirer reference number.
      module ReferenceType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::RefundListResponse::ReferenceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACQUIRER_REFERENCE_NUMBER =
          T.let(
            :acquirer_reference_number,
            WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
          )
        RETRIEVAL_REFERENCE_NUMBER =
          T.let(
            :retrieval_reference_number,
            WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
          )
        SYSTEM_TRACE_AUDIT_NUMBER =
          T.let(
            :system_trace_audit_number,
            WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::RefundListResponse::ReferenceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Where the refund stands with the processor: `pending`, `requires_action`,
      # `succeeded`, `failed`, or `canceled`.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::RefundListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::RefundListResponse::Status::TaggedSymbol
          )
        REQUIRES_ACTION =
          T.let(
            :requires_action,
            WhopSDK::Models::RefundListResponse::Status::TaggedSymbol
          )
        SUCCEEDED =
          T.let(
            :succeeded,
            WhopSDK::Models::RefundListResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            WhopSDK::Models::RefundListResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            WhopSDK::Models::RefundListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::RefundListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
