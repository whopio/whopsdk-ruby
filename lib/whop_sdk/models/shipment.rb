# frozen_string_literal: true

module WhopSDK
  module Models
    class Shipment < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the shipment.
      #
      #   @return [String]
      required :id, String

      # @!attribute carrier
      #   The shipping carrier responsible for delivering this shipment.
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentCarrier]
      required :carrier, enum: -> { WhopSDK::ShipmentCarrier }

      # @!attribute created_at
      #   The datetime the shipment was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute delivery_estimate
      #   The estimated delivery date for this shipment. Null if the carrier has not
      #   provided an estimate.
      #
      #   @return [Time, nil]
      required :delivery_estimate, Time, nil?: true

      # @!attribute payment
      #   The payment associated with this shipment. Null if the payment has been deleted
      #   or is inaccessible.
      #
      #   @return [WhopSDK::Models::Shipment::Payment, nil]
      required :payment, -> { WhopSDK::Shipment::Payment }, nil?: true

      # @!attribute service
      #   The shipping service level used for this shipment. Null if the carrier does not
      #   specify a service tier.
      #
      #   @return [String, nil]
      required :service, String, nil?: true

      # @!attribute status
      #   The current delivery status of this shipment.
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentStatus]
      required :status, enum: -> { WhopSDK::ShipmentStatus }

      # @!attribute substatus
      #   The substatus of a shipment
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentSubstatus, nil]
      required :substatus, enum: -> { WhopSDK::ShipmentSubstatus }, nil?: true

      # @!attribute tracking_code
      #   The carrier-assigned tracking number used to look up shipment progress.
      #
      #   @return [String]
      required :tracking_code, String

      # @!attribute updated_at
      #   The datetime the shipment was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, carrier:, created_at:, delivery_estimate:, payment:, service:, status:, substatus:, tracking_code:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::Shipment} for more details.
      #
      #   A physical shipment associated with a payment, including carrier details and
      #   tracking information.
      #
      #   @param id [String] The unique identifier for the shipment.
      #
      #   @param carrier [Symbol, WhopSDK::Models::ShipmentCarrier] The shipping carrier responsible for delivering this shipment.
      #
      #   @param created_at [Time] The datetime the shipment was created.
      #
      #   @param delivery_estimate [Time, nil] The estimated delivery date for this shipment. Null if the carrier has not provi
      #
      #   @param payment [WhopSDK::Models::Shipment::Payment, nil] The payment associated with this shipment. Null if the payment has been deleted
      #
      #   @param service [String, nil] The shipping service level used for this shipment. Null if the carrier does not
      #
      #   @param status [Symbol, WhopSDK::Models::ShipmentStatus] The current delivery status of this shipment.
      #
      #   @param substatus [Symbol, WhopSDK::Models::ShipmentSubstatus, nil] The substatus of a shipment
      #
      #   @param tracking_code [String] The carrier-assigned tracking number used to look up shipment progress.
      #
      #   @param updated_at [Time] The datetime the shipment was last updated.

      # @see WhopSDK::Models::Shipment#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The payment associated with this shipment. Null if the payment has been deleted
        #   or is inaccessible.
        #
        #   @param id [String] The unique identifier for the payment.
      end
    end
  end
end
