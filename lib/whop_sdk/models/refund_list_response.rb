# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Refunds#list
    class RefundListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Refund ID, prefixed `rf_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account that issued the refund, prefixed `biz_`.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute amount
      #   The refunded amount as it settled, in the payment's settlement currency, so
      #   pages of refunds net against the payment's `refunded_amount`. Converted at the
      #   rate in force when the refund was issued, not the payment's original rate. Null
      #   only when no exchange rate is recorded for a legacy multi-currency payment.
      #
      #   @return [WhopSDK::Models::RefundListResponse::Amount, nil]
      required :amount, -> { WhopSDK::Models::RefundListResponse::Amount }, nil?: true

      # @!attribute created_at
      #   When the refund was requested, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute failure_message
      #   The provider's own explanation of the failure, or null.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute failure_reason
      #   Why the refund failed, normalized across providers. Null unless the refund
      #   failed or was canceled.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListResponse::FailureReason, nil]
      required :failure_reason, enum: -> { WhopSDK::Models::RefundListResponse::FailureReason }, nil?: true

      # @!attribute original_amount
      #   The refunded amount in the currency the processor moved.
      #
      #   @return [WhopSDK::Models::RefundListResponse::OriginalAmount]
      required :original_amount, -> { WhopSDK::Models::RefundListResponse::OriginalAmount }

      # @!attribute payment_id
      #   The payment this refund reverses, prefixed `pay_`.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute provider
      #   The payment provider that processed the refund, such as `paypal` or `coinbase`.
      #
      #   @return [String]
      required :provider, String

      # @!attribute provider_created_at
      #   When the provider created the refund, as an ISO 8601 timestamp.
      #
      #   @return [String, nil]
      required :provider_created_at, String, nil?: true

      # @!attribute reason
      #   Why the refund was issued, when recorded.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListResponse::Reason, nil]
      required :reason, enum: -> { WhopSDK::Models::RefundListResponse::Reason }, nil?: true

      # @!attribute reference_status
      #   Whether a banking-network tracking reference is available for this refund.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListResponse::ReferenceStatus, nil]
      required :reference_status, enum: -> { WhopSDK::Models::RefundListResponse::ReferenceStatus }, nil?: true

      # @!attribute reference_type
      #   The kind of tracking reference, such as an acquirer reference number.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListResponse::ReferenceType, nil]
      required :reference_type, enum: -> { WhopSDK::Models::RefundListResponse::ReferenceType }, nil?: true

      # @!attribute reference_value
      #   The tracking reference the buyer's bank can trace the refund by.
      #
      #   @return [String, nil]
      required :reference_value, String, nil?: true

      # @!attribute status
      #   Where the refund stands with the processor: `pending`, `requires_action`,
      #   `succeeded`, `failed`, or `canceled`.
      #
      #   @return [Symbol, WhopSDK::Models::RefundListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::RefundListResponse::Status }

      # @!attribute updated_at
      #   When the refund last changed, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute visa_rdr
      #   True when the card network initiated the refund through Rapid Dispute
      #   Resolution.
      #
      #   @return [Boolean]
      required :visa_rdr, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, account_id:, amount:, created_at:, failure_message:, failure_reason:, original_amount:, payment_id:, provider:, provider_created_at:, reason:, reference_status:, reference_type:, reference_value:, status:, updated_at:, visa_rdr:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::RefundListResponse} for more details.
      #
      #   @param id [String] Refund ID, prefixed `rf_`.
      #
      #   @param account_id [String, nil] The account that issued the refund, prefixed `biz_`.
      #
      #   @param amount [WhopSDK::Models::RefundListResponse::Amount, nil] The refunded amount as it settled, in the payment's settlement currency, so page
      #
      #   @param created_at [String] When the refund was requested, as an ISO 8601 timestamp.
      #
      #   @param failure_message [String, nil] The provider's own explanation of the failure, or null.
      #
      #   @param failure_reason [Symbol, WhopSDK::Models::RefundListResponse::FailureReason, nil] Why the refund failed, normalized across providers. Null unless the refund faile
      #
      #   @param original_amount [WhopSDK::Models::RefundListResponse::OriginalAmount] The refunded amount in the currency the processor moved.
      #
      #   @param payment_id [String] The payment this refund reverses, prefixed `pay_`.
      #
      #   @param provider [String] The payment provider that processed the refund, such as `paypal` or `coinbase`.
      #
      #   @param provider_created_at [String, nil] When the provider created the refund, as an ISO 8601 timestamp.
      #
      #   @param reason [Symbol, WhopSDK::Models::RefundListResponse::Reason, nil] Why the refund was issued, when recorded.
      #
      #   @param reference_status [Symbol, WhopSDK::Models::RefundListResponse::ReferenceStatus, nil] Whether a banking-network tracking reference is available for this refund.
      #
      #   @param reference_type [Symbol, WhopSDK::Models::RefundListResponse::ReferenceType, nil] The kind of tracking reference, such as an acquirer reference number.
      #
      #   @param reference_value [String, nil] The tracking reference the buyer's bank can trace the refund by.
      #
      #   @param status [Symbol, WhopSDK::Models::RefundListResponse::Status] Where the refund stands with the processor: `pending`, `requires_action`, `succe
      #
      #   @param updated_at [String] When the refund last changed, as an ISO 8601 timestamp.
      #
      #   @param visa_rdr [Boolean] True when the card network initiated the refund through Rapid Dispute Resolution

      # @see WhopSDK::Models::RefundListResponse#amount
      class Amount < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::RefundListResponse::Amount} for more details.
        #
        #   The refunded amount as it settled, in the payment's settlement currency, so
        #   pages of refunds net against the payment's `refunded_amount`. Converted at the
        #   rate in force when the refund was issued, not the payment's original rate. Null
        #   only when no exchange rate is recorded for a legacy multi-currency payment.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # Why the refund failed, normalized across providers. Null unless the refund
      # failed or was canceled.
      #
      # @see WhopSDK::Models::RefundListResponse#failure_reason
      module FailureReason
        extend WhopSDK::Internal::Type::Enum

        BANK_DECLINED = :bank_declined
        EXPIRED_OR_CANCELED_CARD = :expired_or_canceled_card
        LOST_OR_STOLEN_CARD = :lost_or_stolen_card
        INSUFFICIENT_FUNDS = :insufficient_funds
        CHARGE_DISPUTED = :charge_disputed
        NOT_REFUNDABLE = :not_refundable
        MERCHANT_REQUEST = :merchant_request
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::RefundListResponse#original_amount
      class OriginalAmount < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount in major units, as an exact decimal string — `"10.00"` is ten
        #   dollars. A string so no float rounds it in transit.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   Three-letter ISO 4217 currency code, lowercase.
        #
        #   @return [String]
        required :currency, String

        # @!attribute decimals
        #   How many decimal places the amount CARRIES — the precision the charge itself
        #   runs at.
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute display_decimals
        #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
        #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
        #   and `0`. Format the number in your own locale using this.
        #
        #   @return [Integer]
        required :display_decimals, Integer

        # @!method initialize(amount:, currency:, decimals:, display_decimals:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::RefundListResponse::OriginalAmount} for more details.
        #
        #   The refunded amount in the currency the processor moved.
        #
        #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
        #
        #   @param currency [String] Three-letter ISO 4217 currency code, lowercase.
        #
        #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
        #
        #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
      end

      # Why the refund was issued, when recorded.
      #
      # @see WhopSDK::Models::RefundListResponse#reason
      module Reason
        extend WhopSDK::Internal::Type::Enum

        DUPLICATE = :duplicate
        FRAUDULENT = :fraudulent
        REQUESTED_BY_CUSTOMER = :requested_by_customer
        EXPIRED_UNCAPTURED_CHARGE = :expired_uncaptured_charge

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether a banking-network tracking reference is available for this refund.
      #
      # @see WhopSDK::Models::RefundListResponse#reference_status
      module ReferenceStatus
        extend WhopSDK::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        UNAVAILABLE = :unavailable

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The kind of tracking reference, such as an acquirer reference number.
      #
      # @see WhopSDK::Models::RefundListResponse#reference_type
      module ReferenceType
        extend WhopSDK::Internal::Type::Enum

        ACQUIRER_REFERENCE_NUMBER = :acquirer_reference_number
        RETRIEVAL_REFERENCE_NUMBER = :retrieval_reference_number
        SYSTEM_TRACE_AUDIT_NUMBER = :system_trace_audit_number

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Where the refund stands with the processor: `pending`, `requires_action`,
      # `succeeded`, `failed`, or `canceled`.
      #
      # @see WhopSDK::Models::RefundListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        REQUIRES_ACTION = :requires_action
        SUCCEEDED = :succeeded
        FAILED = :failed
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
