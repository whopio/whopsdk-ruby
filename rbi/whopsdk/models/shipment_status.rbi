# typed: strong

module Whopsdk
  module Models
    # The status of a shipment
    module ShipmentStatus
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::ShipmentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UNKNOWN = T.let(:unknown, Whopsdk::ShipmentStatus::TaggedSymbol)
      PRE_TRANSIT = T.let(:pre_transit, Whopsdk::ShipmentStatus::TaggedSymbol)
      IN_TRANSIT = T.let(:in_transit, Whopsdk::ShipmentStatus::TaggedSymbol)
      OUT_FOR_DELIVERY =
        T.let(:out_for_delivery, Whopsdk::ShipmentStatus::TaggedSymbol)
      DELIVERED = T.let(:delivered, Whopsdk::ShipmentStatus::TaggedSymbol)
      AVAILABLE_FOR_PICKUP =
        T.let(:available_for_pickup, Whopsdk::ShipmentStatus::TaggedSymbol)
      RETURN_TO_SENDER =
        T.let(:return_to_sender, Whopsdk::ShipmentStatus::TaggedSymbol)
      FAILURE = T.let(:failure, Whopsdk::ShipmentStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Whopsdk::ShipmentStatus::TaggedSymbol)
      ERROR = T.let(:error, Whopsdk::ShipmentStatus::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::ShipmentStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
