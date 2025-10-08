# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Shipments#list
    class ShipmentListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the shipment
      #
      #   @return [String]
      required :id, String

      # @!attribute carrier
      #   The carrier of the shipment
      #
      #   @return [Symbol, Whopsdk::Models::ShipmentCarrier]
      required :carrier, enum: -> { Whopsdk::ShipmentCarrier }

      # @!attribute created_at
      #   The date and time the shipment was created
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute delivery_estimate
      #   The delivery estimate of the shipment
      #
      #   @return [Integer, nil]
      required :delivery_estimate, Integer, nil?: true

      # @!attribute payment
      #   The payment of the shipment
      #
      #   @return [Whopsdk::Models::ShipmentListResponse::Payment]
      required :payment, -> { Whopsdk::Models::ShipmentListResponse::Payment }

      # @!attribute service
      #   The service of the shipment
      #
      #   @return [String, nil]
      required :service, String, nil?: true

      # @!attribute status
      #   The status of the shipment
      #
      #   @return [Symbol, Whopsdk::Models::ShipmentStatus]
      required :status, enum: -> { Whopsdk::ShipmentStatus }

      # @!attribute substatus
      #   The substatus of a shipment
      #
      #   @return [Symbol, Whopsdk::Models::ShipmentSubstatus, nil]
      required :substatus, enum: -> { Whopsdk::ShipmentSubstatus }, nil?: true

      # @!attribute tracking_code
      #   The tracking code of the shipment
      #
      #   @return [String]
      required :tracking_code, String

      # @!attribute updated_at
      #   The date and time the shipment was last updated
      #
      #   @return [Integer]
      required :updated_at, Integer

      # @!method initialize(id:, carrier:, created_at:, delivery_estimate:, payment:, service:, status:, substatus:, tracking_code:, updated_at:)
      #   A shipment
      #
      #   @param id [String] The ID of the shipment
      #
      #   @param carrier [Symbol, Whopsdk::Models::ShipmentCarrier] The carrier of the shipment
      #
      #   @param created_at [Integer] The date and time the shipment was created
      #
      #   @param delivery_estimate [Integer, nil] The delivery estimate of the shipment
      #
      #   @param payment [Whopsdk::Models::ShipmentListResponse::Payment] The payment of the shipment
      #
      #   @param service [String, nil] The service of the shipment
      #
      #   @param status [Symbol, Whopsdk::Models::ShipmentStatus] The status of the shipment
      #
      #   @param substatus [Symbol, Whopsdk::Models::ShipmentSubstatus, nil] The substatus of a shipment
      #
      #   @param tracking_code [String] The tracking code of the shipment
      #
      #   @param updated_at [Integer] The date and time the shipment was last updated

      # @see Whopsdk::Models::ShipmentListResponse#payment
      class Payment < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The receipt ID
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The payment of the shipment
        #
        #   @param id [String] The receipt ID
      end
    end
  end
end
