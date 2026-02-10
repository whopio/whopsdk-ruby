# typed: strong

module WhopSDK
  module Models
    class ShipmentListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ShipmentListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the shipment.
      sig { returns(String) }
      attr_accessor :id

      # The shipping carrier responsible for delivering this shipment.
      sig { returns(WhopSDK::ShipmentCarrier::TaggedSymbol) }
      attr_accessor :carrier

      # The datetime the shipment was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The estimated delivery date for this shipment. Null if the carrier has not
      # provided an estimate.
      sig { returns(T.nilable(Time)) }
      attr_accessor :delivery_estimate

      # The payment associated with this shipment. Null if the payment has been deleted
      # or is inaccessible.
      sig { returns(T.nilable(WhopSDK::Models::ShipmentListResponse::Payment)) }
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(WhopSDK::Models::ShipmentListResponse::Payment::OrHash)
        ).void
      end
      attr_writer :payment

      # The shipping service level used for this shipment. Null if the carrier does not
      # specify a service tier.
      sig { returns(T.nilable(String)) }
      attr_accessor :service

      # The current delivery status of this shipment.
      sig { returns(WhopSDK::ShipmentStatus::TaggedSymbol) }
      attr_accessor :status

      # The substatus of a shipment
      sig { returns(T.nilable(WhopSDK::ShipmentSubstatus::TaggedSymbol)) }
      attr_accessor :substatus

      # The carrier-assigned tracking number used to look up shipment progress.
      sig { returns(String) }
      attr_accessor :tracking_code

      # The datetime the shipment was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A physical shipment associated with a payment, including carrier details and
      # tracking information.
      sig do
        params(
          id: String,
          carrier: WhopSDK::ShipmentCarrier::OrSymbol,
          created_at: Time,
          delivery_estimate: T.nilable(Time),
          payment:
            T.nilable(WhopSDK::Models::ShipmentListResponse::Payment::OrHash),
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
        # The shipping carrier responsible for delivering this shipment.
        carrier:,
        # The datetime the shipment was created.
        created_at:,
        # The estimated delivery date for this shipment. Null if the carrier has not
        # provided an estimate.
        delivery_estimate:,
        # The payment associated with this shipment. Null if the payment has been deleted
        # or is inaccessible.
        payment:,
        # The shipping service level used for this shipment. Null if the carrier does not
        # specify a service tier.
        service:,
        # The current delivery status of this shipment.
        status:,
        # The substatus of a shipment
        substatus:,
        # The carrier-assigned tracking number used to look up shipment progress.
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
            payment: T.nilable(WhopSDK::Models::ShipmentListResponse::Payment),
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
            T.any(
              WhopSDK::Models::ShipmentListResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The payment associated with this shipment. Null if the payment has been deleted
        # or is inaccessible.
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
