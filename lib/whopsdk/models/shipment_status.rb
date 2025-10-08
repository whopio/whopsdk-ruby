# frozen_string_literal: true

module Whopsdk
  module Models
    # The status of a shipment
    module ShipmentStatus
      extend Whopsdk::Internal::Type::Enum

      UNKNOWN = :unknown
      PRE_TRANSIT = :pre_transit
      IN_TRANSIT = :in_transit
      OUT_FOR_DELIVERY = :out_for_delivery
      DELIVERED = :delivered
      AVAILABLE_FOR_PICKUP = :available_for_pickup
      RETURN_TO_SENDER = :return_to_sender
      FAILURE = :failure
      CANCELLED = :cancelled
      ERROR = :error

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
