# frozen_string_literal: true

module Whopsdk
  module Models
    # The substatus of a shipment
    module ShipmentSubstatus
      extend Whopsdk::Internal::Type::Enum

      ADDRESS_CORRECTION = :address_correction
      ARRIVED_AT_DESTINATION = :arrived_at_destination
      ARRIVED_AT_FACILITY = :arrived_at_facility
      ARRIVED_AT_PICKUP_LOCATION = :arrived_at_pickup_location
      AWAITING_INFORMATION = :awaiting_information
      SUBSTATUS_CANCELLED = :substatus_cancelled
      DAMAGED = :damaged
      DELAYED = :delayed
      DELIVERY_EXCEPTION = :delivery_exception
      DEPARTED_FACILITY = :departed_facility
      DEPARTED_ORIGIN_FACILITY = :departed_origin_facility
      EXPIRED = :expired
      SUBSTATUS_FAILURE = :substatus_failure
      HELD = :held
      SUBSTATUS_IN_TRANSIT = :substatus_in_transit
      LABEL_CREATED = :label_created
      LOST = :lost
      MISSORTED = :missorted
      SUBSTATUS_OUT_FOR_DELIVERY = :substatus_out_for_delivery
      RECEIVED_AT_DESTINATION_FACILITY = :received_at_destination_facility
      RECEIVED_AT_ORIGIN_FACILITY = :received_at_origin_facility
      REFUSED = :refused
      RETURN = :return
      STATUS_UPDATE = :status_update
      TRANSFERRED_TO_DESTINATION_CARRIER = :transferred_to_destination_carrier
      TRANSIT_EXCEPTION = :transit_exception
      SUBSTATUS_UNKNOWN = :substatus_unknown
      WEATHER_DELAY = :weather_delay

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
