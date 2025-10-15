# frozen_string_literal: true

module Whopsdk
  module Models
    class Shipment < Whopsdk::Internal::Type::BaseModel
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
      #   @return [Whopsdk::Models::Shipment::Payment]
      required :payment, -> { Whopsdk::Shipment::Payment }

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
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, carrier:, created_at:, delivery_estimate:, payment:, service:, status:, substatus:, tracking_code:, updated_at:)
      #   A shipment
      #
      #   @param id [String] The ID of the shipment
      #
      #   @param carrier [Symbol, Whopsdk::Models::ShipmentCarrier] The carrier of the shipment
      #
      #   @param created_at [Time] The date and time the shipment was created
      #
      #   @param delivery_estimate [Time, nil] The delivery estimate of the shipment
      #
      #   @param payment [Whopsdk::Models::Shipment::Payment] The payment of the shipment
      #
      #   @param service [String, nil] The service of the shipment
      #
      #   @param status [Symbol, Whopsdk::Models::ShipmentStatus] The status of the shipment
      #
      #   @param substatus [Symbol, Whopsdk::Models::ShipmentSubstatus, nil] The substatus of a shipment
      #
      #   @param tracking_code [String] The tracking code of the shipment
      #
      #   @param updated_at [Time] The date and time the shipment was last updated

      # @see Whopsdk::Models::Shipment#payment
      class Payment < Whopsdk::Internal::Type::BaseModel
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
