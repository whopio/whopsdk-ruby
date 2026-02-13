# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Refunds#list
    class RefundListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the refund.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The refunded amount as a decimal in the specified currency, such as 10.43 for
      #   $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the refund was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The three-letter ISO currency code for the refunded amount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute payment
      #   The original payment that this refund was issued against. Null if the payment is
      #   no longer available.
      #
      #   @return [WhopSDK::Models::RefundListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::RefundListResponse::Payment }, nil?: true

      # @!attribute provider
      #   The payment provider that processed the refund.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentProvider]
      required :provider, enum: -> { WhopSDK::PaymentProvider }

      # @!attribute provider_created_at
      #   The timestamp when the refund was created in the payment provider's system. Null
      #   if not available from the provider.
      #
      #   @return [Time, nil]
      required :provider_created_at, Time, nil?: true

      # @!attribute reference_status
      #   The status of the refund reference.
      #
      #   @return [Symbol, WhopSDK::Models::RefundReferenceStatus, nil]
      required :reference_status, enum: -> { WhopSDK::RefundReferenceStatus }, nil?: true

      # @!attribute reference_type
      #   The type of refund reference that was made available by the payment provider.
      #
      #   @return [Symbol, WhopSDK::Models::RefundReferenceType, nil]
      required :reference_type, enum: -> { WhopSDK::RefundReferenceType }, nil?: true

      # @!attribute reference_value
      #   The tracking reference value from the payment processor, used to trace the
      #   refund through banking networks. Null if no reference was provided.
      #
      #   @return [String, nil]
      required :reference_value, String, nil?: true

      # @!attribute status
      #   The current processing status of the refund, such as pending, succeeded, or
      #   failed.
      #
      #   @return [Symbol, WhopSDK::Models::RefundStatus]
      required :status, enum: -> { WhopSDK::RefundStatus }

      # @!method initialize(id:, amount:, created_at:, currency:, payment:, provider:, provider_created_at:, reference_status:, reference_type:, reference_value:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::RefundListResponse} for more details.
      #
      #   A refund represents a full or partial reversal of a payment, including the
      #   amount, status, and payment provider.
      #
      #   @param id [String] The unique identifier for the refund.
      #
      #   @param amount [Float] The refunded amount as a decimal in the specified currency, such as 10.43 for $1
      #
      #   @param created_at [Time] The datetime the refund was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the refunded amount.
      #
      #   @param payment [WhopSDK::Models::RefundListResponse::Payment, nil] The original payment that this refund was issued against. Null if the payment is
      #
      #   @param provider [Symbol, WhopSDK::Models::PaymentProvider] The payment provider that processed the refund.
      #
      #   @param provider_created_at [Time, nil] The timestamp when the refund was created in the payment provider's system. Null
      #
      #   @param reference_status [Symbol, WhopSDK::Models::RefundReferenceStatus, nil] The status of the refund reference.
      #
      #   @param reference_type [Symbol, WhopSDK::Models::RefundReferenceType, nil] The type of refund reference that was made available by the payment provider.
      #
      #   @param reference_value [String, nil] The tracking reference value from the payment processor, used to trace the refun
      #
      #   @param status [Symbol, WhopSDK::Models::RefundStatus] The current processing status of the refund, such as pending, succeeded, or fail

      # @see WhopSDK::Models::RefundListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The original payment that this refund was issued against. Null if the payment is
        #   no longer available.
        #
        #   @param id [String] The unique identifier for the payment.
      end
    end
  end
end
