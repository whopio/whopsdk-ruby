# typed: strong

module WhopSDK
  module Models
    class Shipment < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Shipment, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the shipment.
      sig { returns(String) }
      attr_accessor :id

      # The carrier of the shipment
      sig { returns(WhopSDK::ShipmentCarrier::TaggedSymbol) }
      attr_accessor :carrier

      # The datetime the shipment was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The delivery estimate of the shipment
      sig { returns(T.nilable(Time)) }
      attr_accessor :delivery_estimate

      # The payment of the shipment
      sig { returns(T.nilable(WhopSDK::Shipment::Payment)) }
      attr_reader :payment

      sig do
        params(payment: T.nilable(WhopSDK::Shipment::Payment::OrHash)).void
      end
      attr_writer :payment

      # The service of the shipment
      sig { returns(T.nilable(String)) }
      attr_accessor :service

      # The status of the shipment
      sig { returns(WhopSDK::ShipmentStatus::TaggedSymbol) }
      attr_accessor :status

      # The substatus of a shipment
      sig { returns(T.nilable(WhopSDK::ShipmentSubstatus::TaggedSymbol)) }
      attr_accessor :substatus

      # The tracking code of the shipment
      sig { returns(String) }
      attr_accessor :tracking_code

      # The datetime the shipment was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A shipment
      sig do
        params(
          id: String,
          carrier: WhopSDK::ShipmentCarrier::OrSymbol,
          created_at: Time,
          delivery_estimate: T.nilable(Time),
          payment: T.nilable(WhopSDK::Shipment::Payment::OrHash),
          service: T.nilable(String),
          status: WhopSDK::ShipmentStatus::OrSymbol,
          substatus: T.nilable(WhopSDK::ShipmentSubstatus::OrSymbol),
          tracking_code: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the shipment.
        id:,
        # The carrier of the shipment
        carrier:,
        # The datetime the shipment was created.
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
        # The datetime the shipment was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            carrier: WhopSDK::ShipmentCarrier::TaggedSymbol,
            created_at: Time,
            delivery_estimate: T.nilable(Time),
            payment: T.nilable(WhopSDK::Shipment::Payment),
            service: T.nilable(String),
            status: WhopSDK::ShipmentStatus::TaggedSymbol,
            substatus: T.nilable(WhopSDK::ShipmentSubstatus::TaggedSymbol),
            tracking_code: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Shipment::Payment, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The payment of the shipment
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the payment.
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
