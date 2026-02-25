# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DisputeAlerts#list
    class DisputeAlertListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the dispute alert.
      #
      #   @return [String]
      required :id, String

      # @!attribute alert_type
      #   The type of the dispute alert.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeAlertType]
      required :alert_type, enum: -> { WhopSDK::DisputeAlertType }

      # @!attribute amount
      #   The alerted amount in the specified currency.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute charge_for_alert
      #   Whether this alert incurs a charge.
      #
      #   @return [Boolean]
      required :charge_for_alert, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The time the dispute alert was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The three-letter ISO currency code for the alerted amount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute dispute
      #   The dispute associated with the dispute alert.
      #
      #   @return [WhopSDK::Models::DisputeAlertListResponse::Dispute, nil]
      required :dispute, -> { WhopSDK::Models::DisputeAlertListResponse::Dispute }, nil?: true

      # @!attribute payment
      #   The payment associated with the dispute alert.
      #
      #   @return [WhopSDK::Models::DisputeAlertListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::DisputeAlertListResponse::Payment }, nil?: true

      # @!attribute transaction_date
      #   The date of the original transaction.
      #
      #   @return [Time, nil]
      required :transaction_date, Time, nil?: true

      # @!method initialize(id:, alert_type:, amount:, charge_for_alert:, created_at:, currency:, dispute:, payment:, transaction_date:)
      #   A dispute alert represents an early warning notification from a payment
      #   processor about a potential dispute or chargeback.
      #
      #   @param id [String] The unique identifier of the dispute alert.
      #
      #   @param alert_type [Symbol, WhopSDK::Models::DisputeAlertType] The type of the dispute alert.
      #
      #   @param amount [Float] The alerted amount in the specified currency.
      #
      #   @param charge_for_alert [Boolean] Whether this alert incurs a charge.
      #
      #   @param created_at [Time] The time the dispute alert was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the alerted amount.
      #
      #   @param dispute [WhopSDK::Models::DisputeAlertListResponse::Dispute, nil] The dispute associated with the dispute alert.
      #
      #   @param payment [WhopSDK::Models::DisputeAlertListResponse::Payment, nil] The payment associated with the dispute alert.
      #
      #   @param transaction_date [Time, nil] The date of the original transaction.

      # @see WhopSDK::Models::DisputeAlertListResponse#dispute
      class Dispute < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the dispute.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The dispute associated with the dispute alert.
        #
        #   @param id [String] The unique identifier for the dispute.
      end

      # @see WhopSDK::Models::DisputeAlertListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The payment associated with the dispute alert.
        #
        #   @param id [String] The unique identifier for the payment.
      end
    end
  end
end
