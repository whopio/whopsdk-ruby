# typed: strong

module WhopSDK
  module Models
    class Shipment < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Shipment, WhopSDK::Internal::AnyHash) }

      # Shipment ID, prefixed `ship_`.
      sig { returns(String) }
      attr_accessor :id

      # The account that owns this shipment, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # The shipping carrier detected for this shipment. Null until a tracking update
      # identifies it.
      sig { returns(T.nilable(String)) }
      attr_accessor :carrier

      sig { returns(T::Array[WhopSDK::Shipment::Checkpoint]) }
      attr_accessor :checkpoints

      # The datetime the shipment was created (ISO 8601).
      sig { returns(String) }
      attr_accessor :created_at

      # The payment this shipment fulfills, prefixed `pay_`.
      sig { returns(String) }
      attr_accessor :payment_id

      # The current delivery status of this shipment.
      sig { returns(WhopSDK::Shipment::Status::TaggedSymbol) }
      attr_accessor :status

      # The carrier-assigned tracking number used to look up shipment progress.
      sig { returns(String) }
      attr_accessor :tracking_number

      # A customer-facing URL to track this shipment's progress.
      sig { returns(String) }
      attr_accessor :tracking_url

      # The datetime the shipment was last updated (ISO 8601).
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_id: String,
          carrier: T.nilable(String),
          checkpoints: T::Array[WhopSDK::Shipment::Checkpoint::OrHash],
          created_at: String,
          payment_id: String,
          status: WhopSDK::Shipment::Status::OrSymbol,
          tracking_number: String,
          tracking_url: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Shipment ID, prefixed `ship_`.
        id:,
        # The account that owns this shipment, prefixed `biz_`.
        account_id:,
        # The shipping carrier detected for this shipment. Null until a tracking update
        # identifies it.
        carrier:,
        checkpoints:,
        # The datetime the shipment was created (ISO 8601).
        created_at:,
        # The payment this shipment fulfills, prefixed `pay_`.
        payment_id:,
        # The current delivery status of this shipment.
        status:,
        # The carrier-assigned tracking number used to look up shipment progress.
        tracking_number:,
        # A customer-facing URL to track this shipment's progress.
        tracking_url:,
        # The datetime the shipment was last updated (ISO 8601).
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            carrier: T.nilable(String),
            checkpoints: T::Array[WhopSDK::Shipment::Checkpoint],
            created_at: String,
            payment_id: String,
            status: WhopSDK::Shipment::Status::TaggedSymbol,
            tracking_number: String,
            tracking_url: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Checkpoint < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Shipment::Checkpoint, WhopSDK::Internal::AnyHash)
          end

        # Where the carrier recorded the scan, such as `PHILADELPHIA, PA`. Null when the
        # carrier sent none.
        sig { returns(T.nilable(String)) }
        attr_accessor :location

        # Carrier's description of the scan, such as `Departed USPS Regional Facility`.
        # Null when the carrier sent none.
        sig { returns(T.nilable(String)) }
        attr_accessor :message

        # Delivery status this carrier scan maps to.
        sig { returns(WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol) }
        attr_accessor :status

        # When the carrier recorded the scan, as an ISO 8601 timestamp. Null when the
        # carrier sent no scan time.
        sig { returns(T.nilable(String)) }
        attr_accessor :timestamp

        # Carrier scan history for this shipment, oldest scan first. Empty until the
        # carrier reports its first scan.
        sig do
          params(
            location: T.nilable(String),
            message: T.nilable(String),
            status: WhopSDK::Shipment::Checkpoint::Status::OrSymbol,
            timestamp: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Where the carrier recorded the scan, such as `PHILADELPHIA, PA`. Null when the
          # carrier sent none.
          location:,
          # Carrier's description of the scan, such as `Departed USPS Regional Facility`.
          # Null when the carrier sent none.
          message:,
          # Delivery status this carrier scan maps to.
          status:,
          # When the carrier recorded the scan, as an ISO 8601 timestamp. Null when the
          # carrier sent no scan time.
          timestamp:
        )
        end

        sig do
          override.returns(
            {
              location: T.nilable(String),
              message: T.nilable(String),
              status: WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol,
              timestamp: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Delivery status this carrier scan maps to.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Shipment::Checkpoint::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNKNOWN =
            T.let(:unknown, WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol)
          PRE_TRANSIT =
            T.let(
              :pre_transit,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          IN_TRANSIT =
            T.let(
              :in_transit,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          OUT_FOR_DELIVERY =
            T.let(
              :out_for_delivery,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          AVAILABLE_FOR_PICKUP =
            T.let(
              :available_for_pickup,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          RETURN_TO_SENDER =
            T.let(
              :return_to_sender,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          FAILURE =
            T.let(:failure, WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol)
          CANCELLED =
            T.let(
              :cancelled,
              WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol
            )
          ERROR =
            T.let(:error, WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Shipment::Checkpoint::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # The current delivery status of this shipment.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Shipment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNKNOWN = T.let(:unknown, WhopSDK::Shipment::Status::TaggedSymbol)
        PRE_TRANSIT =
          T.let(:pre_transit, WhopSDK::Shipment::Status::TaggedSymbol)
        IN_TRANSIT = T.let(:in_transit, WhopSDK::Shipment::Status::TaggedSymbol)
        OUT_FOR_DELIVERY =
          T.let(:out_for_delivery, WhopSDK::Shipment::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, WhopSDK::Shipment::Status::TaggedSymbol)
        AVAILABLE_FOR_PICKUP =
          T.let(:available_for_pickup, WhopSDK::Shipment::Status::TaggedSymbol)
        RETURN_TO_SENDER =
          T.let(:return_to_sender, WhopSDK::Shipment::Status::TaggedSymbol)
        FAILURE = T.let(:failure, WhopSDK::Shipment::Status::TaggedSymbol)
        CANCELLED = T.let(:cancelled, WhopSDK::Shipment::Status::TaggedSymbol)
        ERROR = T.let(:error, WhopSDK::Shipment::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Shipment::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
