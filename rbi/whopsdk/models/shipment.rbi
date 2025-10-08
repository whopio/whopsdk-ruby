# typed: strong

module Whopsdk
  module Models
    class Shipment < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Shipment, Whopsdk::Internal::AnyHash) }

      # The ID of the shipment
      sig { returns(String) }
      attr_accessor :id

      # The carrier of the shipment
      sig { returns(Whopsdk::ShipmentCarrier::TaggedSymbol) }
      attr_accessor :carrier

      # The date and time the shipment was created
      sig { returns(Integer) }
      attr_accessor :created_at

      # The delivery estimate of the shipment
      sig { returns(T.nilable(Integer)) }
      attr_accessor :delivery_estimate

      # The payment of the shipment
      sig { returns(Whopsdk::Shipment::Payment) }
      attr_reader :payment

      sig { params(payment: Whopsdk::Shipment::Payment::OrHash).void }
      attr_writer :payment

      # The service of the shipment
      sig { returns(T.nilable(String)) }
      attr_accessor :service

      # The status of the shipment
      sig { returns(Whopsdk::ShipmentStatus::TaggedSymbol) }
      attr_accessor :status

      # The substatus of a shipment
      sig { returns(T.nilable(Whopsdk::ShipmentSubstatus::TaggedSymbol)) }
      attr_accessor :substatus

      # The tracking code of the shipment
      sig { returns(String) }
      attr_accessor :tracking_code

      # The date and time the shipment was last updated
      sig { returns(Integer) }
      attr_accessor :updated_at

      # A shipment
      sig do
        params(
          id: String,
          carrier: Whopsdk::ShipmentCarrier::OrSymbol,
          created_at: Integer,
          delivery_estimate: T.nilable(Integer),
          payment: Whopsdk::Shipment::Payment::OrHash,
          service: T.nilable(String),
          status: Whopsdk::ShipmentStatus::OrSymbol,
          substatus: T.nilable(Whopsdk::ShipmentSubstatus::OrSymbol),
          tracking_code: String,
          updated_at: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the shipment
        id:,
        # The carrier of the shipment
        carrier:,
        # The date and time the shipment was created
        created_at:,
        # The delivery estimate of the shipment
        delivery_estimate:,
        # The payment of the shipment
        payment:,
        # The service of the shipment
        service:,
        # The status of the shipment
        status:,
        # The substatus of a shipment
        substatus:,
        # The tracking code of the shipment
        tracking_code:,
        # The date and time the shipment was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            carrier: Whopsdk::ShipmentCarrier::TaggedSymbol,
            created_at: Integer,
            delivery_estimate: T.nilable(Integer),
            payment: Whopsdk::Shipment::Payment,
            service: T.nilable(String),
            status: Whopsdk::ShipmentStatus::TaggedSymbol,
            substatus: T.nilable(Whopsdk::ShipmentSubstatus::TaggedSymbol),
            tracking_code: String,
            updated_at: Integer
          }
        )
      end
      def to_hash
      end

      class Payment < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Shipment::Payment, Whopsdk::Internal::AnyHash)
          end

        # The receipt ID
        sig { returns(String) }
        attr_accessor :id

        # The payment of the shipment
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The receipt ID
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
