# typed: strong

module WhopSDK
  module Models
    # The substatus of a shipment
    module ShipmentSubstatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ShipmentSubstatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ADDRESS_CORRECTION =
        T.let(:address_correction, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_DESTINATION =
        T.let(:arrived_at_destination, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_FACILITY =
        T.let(:arrived_at_facility, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      ARRIVED_AT_PICKUP_LOCATION =
        T.let(
          :arrived_at_pickup_location,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      AWAITING_INFORMATION =
        T.let(:awaiting_information, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_CANCELLED =
        T.let(:substatus_cancelled, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      DAMAGED = T.let(:damaged, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      DELAYED = T.let(:delayed, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      DELIVERY_EXCEPTION =
        T.let(:delivery_exception, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      DEPARTED_FACILITY =
        T.let(:departed_facility, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      DEPARTED_ORIGIN_FACILITY =
        T.let(
          :departed_origin_facility,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      EXPIRED = T.let(:expired, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_FAILURE =
        T.let(:substatus_failure, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      HELD = T.let(:held, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_IN_TRANSIT =
        T.let(:substatus_in_transit, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      LABEL_CREATED =
        T.let(:label_created, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      LOST = T.let(:lost, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      MISSORTED = T.let(:missorted, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_OUT_FOR_DELIVERY =
        T.let(
          :substatus_out_for_delivery,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      RECEIVED_AT_DESTINATION_FACILITY =
        T.let(
          :received_at_destination_facility,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      RECEIVED_AT_ORIGIN_FACILITY =
        T.let(
          :received_at_origin_facility,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      REFUSED = T.let(:refused, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      RETURN = T.let(:return, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      STATUS_UPDATE =
        T.let(:status_update, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      TRANSFERRED_TO_DESTINATION_CARRIER =
        T.let(
          :transferred_to_destination_carrier,
          WhopSDK::ShipmentSubstatus::TaggedSymbol
        )
      TRANSIT_EXCEPTION =
        T.let(:transit_exception, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      SUBSTATUS_UNKNOWN =
        T.let(:substatus_unknown, WhopSDK::ShipmentSubstatus::TaggedSymbol)
      WEATHER_DELAY =
        T.let(:weather_delay, WhopSDK::ShipmentSubstatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::ShipmentSubstatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
