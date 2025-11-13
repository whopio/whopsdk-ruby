# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Shipments#list
    class ShipmentListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the shipment
      #
      #   @return [String]
      required :id, String

      # @!attribute carrier
      #   The carrier of the shipment
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentCarrier]
      required :carrier, enum: -> { WhopSDK::ShipmentCarrier }

      # @!attribute created_at
      #   The date and time the shipment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute delivery_estimate
      #   The delivery estimate of the shipment
      #
      #   @return [Time, nil]
      required :delivery_estimate, Time, nil?: true

      # @!attribute payment
      #   The payment of the shipment
      #
      #   @return [WhopSDK::Models::ShipmentListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::ShipmentListResponse::Payment }, nil?: true

      # @!attribute service
      #   The service of the shipment
      #
      #   @return [String, nil]
      required :service, String, nil?: true

      # @!attribute status
      #   The status of the shipment
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentStatus]
      required :status, enum: -> { WhopSDK::ShipmentStatus }

      # @!attribute substatus
      #   The substatus of a shipment
      #
      #   @return [Symbol, WhopSDK::Models::ShipmentSubstatus, nil]
      required :substatus, enum: -> { WhopSDK::ShipmentSubstatus }, nil?: true

      # @!attribute tracking_code
      #   The tracking code of the shipment
      #
      #   @return [String]
      required :tracking_code, String

      # @!attribute updated_at
      #   The date and time the shipment was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, carrier:, created_at:, delivery_estimate:, payment:, service:, status:, substatus:, tracking_code:, updated_at:)
      #   A shipment
      #
      #   @param id [String] The ID of the shipment
      #
      #   @param carrier [Symbol, WhopSDK::Models::ShipmentCarrier] The carrier of the shipment
      #
      #   @param created_at [Time] The date and time the shipment was created
      #
      #   @param delivery_estimate [Time, nil] The delivery estimate of the shipment
      #
      #   @param payment [WhopSDK::Models::ShipmentListResponse::Payment, nil] The payment of the shipment
      #
      #   @param service [String, nil] The service of the shipment
      #
      #   @param status [Symbol, WhopSDK::Models::ShipmentStatus] The status of the shipment
      #
      #   @param substatus [Symbol, WhopSDK::Models::ShipmentSubstatus, nil] The substatus of a shipment
      #
      #   @param tracking_code [String] The tracking code of the shipment
      #
      #   @param updated_at [Time] The date and time the shipment was last updated

      # @see WhopSDK::Models::ShipmentListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The payment ID
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The payment of the shipment
        #
        #   @param id [String] The payment ID
      end
    end
  end
end
