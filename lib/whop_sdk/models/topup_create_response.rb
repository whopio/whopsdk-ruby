# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Topups#create
    class TopupCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the payment.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the payment was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute failure_message
      #   If the payment failed, the reason for the failure.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute paid_at
      #   The time at which this payment was successfully collected. Null if the payment
      #   has not yet succeeded. As a Unix timestamp.
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute status
      #   The status of a receipt
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptStatus, nil]
      required :status, enum: -> { WhopSDK::ReceiptStatus }, nil?: true

      # @!attribute total
      #   The total to show to the creator (excluding buyer fees).
      #
      #   @return [Float, nil]
      required :total, Float, nil?: true

      # @!method initialize(id:, created_at:, currency:, failure_message:, paid_at:, status:, total:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TopupCreateResponse} for more details.
      #
      #   A payment represents a completed or attempted charge for a membership. Payments
      #   track the amount, status, currency, and payment method used.
      #
      #   @param id [String] The unique identifier for the payment.
      #
      #   @param created_at [Time] The datetime the payment was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param failure_message [String, nil] If the payment failed, the reason for the failure.
      #
      #   @param paid_at [Time, nil] The time at which this payment was successfully collected. Null if the payment h
      #
      #   @param status [Symbol, WhopSDK::Models::ReceiptStatus, nil] The status of a receipt
      #
      #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
    end
  end
end
