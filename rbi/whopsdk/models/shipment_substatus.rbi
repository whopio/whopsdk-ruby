# typed: strong

module Whopsdk
  module Models
    # The substatus of a shipment
    module ShipmentSubstatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::ShipmentSubstatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ADDRESS_CORRECTION =
        T.let(:address_correction, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_DESTINATION =
        T.let(:arrived_at_destination, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_FACILITY =
        T.let(:arrived_at_facility, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_PICKUP_LOCATION =
        T.let(
          :arrived_at_pickup_location,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      AWAITING_INFORMATION =
        T.let(:awaiting_information, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_CANCELLED =
        T.let(:substatus_cancelled, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      DAMAGED = T.let(:damaged, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      DELAYED = T.let(:delayed, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      DELIVERY_EXCEPTION =
        T.let(:delivery_exception, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      DEPARTED_FACILITY =
        T.let(:departed_facility, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      DEPARTED_ORIGIN_FACILITY =
        T.let(
          :departed_origin_facility,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      EXPIRED = T.let(:expired, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_FAILURE =
        T.let(:substatus_failure, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      HELD = T.let(:held, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_IN_TRANSIT =
        T.let(:substatus_in_transit, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      LABEL_CREATED =
        T.let(:label_created, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      LOST = T.let(:lost, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      MISSORTED = T.let(:missorted, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_OUT_FOR_DELIVERY =
        T.let(
          :substatus_out_for_delivery,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      RECEIVED_AT_DESTINATION_FACILITY =
        T.let(
          :received_at_destination_facility,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      RECEIVED_AT_ORIGIN_FACILITY =
        T.let(
          :received_at_origin_facility,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      REFUSED = T.let(:refused, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      RETURN = T.let(:return, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      STATUS_UPDATE =
        T.let(:status_update, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      TRANSFERRED_TO_DESTINATION_CARRIER =
        T.let(
          :transferred_to_destination_carrier,
          Whopsdk::ShipmentSubstatus::TaggedSymbol
        )
      TRANSIT_EXCEPTION =
        T.let(:transit_exception, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_UNKNOWN =
        T.let(:substatus_unknown, Whopsdk::ShipmentSubstatus::TaggedSymbol)
      WEATHER_DELAY =
        T.let(:weather_delay, Whopsdk::ShipmentSubstatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::ShipmentSubstatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
