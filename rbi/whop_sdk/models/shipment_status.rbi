# typed: strong

module WhopSDK
  module Models
    # The status of a shipment
    module ShipmentStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ShipmentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UNKNOWN = T.let(:unknown, WhopSDK::ShipmentStatus::TaggedSymbol)
      PRE_TRANSIT = T.let(:pre_transit, WhopSDK::ShipmentStatus::TaggedSymbol)
      IN_TRANSIT = T.let(:in_transit, WhopSDK::ShipmentStatus::TaggedSymbol)
      OUT_FOR_DELIVERY =
        T.let(:out_for_delivery, WhopSDK::ShipmentStatus::TaggedSymbol)
      DELIVERED = T.let(:delivered, WhopSDK::ShipmentStatus::TaggedSymbol)
      AVAILABLE_FOR_PICKUP =
        T.let(:available_for_pickup, WhopSDK::ShipmentStatus::TaggedSymbol)
      RETURN_TO_SENDER =
        T.let(:return_to_sender, WhopSDK::ShipmentStatus::TaggedSymbol)
      FAILURE = T.let(:failure, WhopSDK::ShipmentStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, WhopSDK::ShipmentStatus::TaggedSymbol)
      ERROR = T.let(:error, WhopSDK::ShipmentStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ShipmentStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
