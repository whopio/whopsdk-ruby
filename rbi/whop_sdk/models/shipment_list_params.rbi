# typed: strong

module WhopSDK
  module Models
    class ShipmentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ShipmentListParams, WhopSDK::Internal::AnyHash)
        end

      # The account to list shipments for. Defaults to the acting account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns shipments after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns shipments before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Return shipments created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Return shipments created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction.
      sig do
        returns(T.nilable(WhopSDK::ShipmentListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::ShipmentListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of shipments to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of shipments to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by.
      sig { returns(T.nilable(WhopSDK::ShipmentListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::ShipmentListParams::Order::OrSymbol).void }
      attr_writer :order

      # Only shipments fulfilling these payments, each prefixed `pay_`. Repeat the
      # parameter to pass several, up to 100 per request — one paginated list covers all
      # of them.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :payment_id

      sig { params(payment_id: T::Array[String]).void }
      attr_writer :payment_id

      # Filter to shipments with this delivery status.
      sig { returns(T.nilable(WhopSDK::ShipmentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::ShipmentListParams::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::ShipmentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::ShipmentListParams::Order::OrSymbol,
          payment_id: T::Array[String],
          status: WhopSDK::ShipmentListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account to list shipments for. Defaults to the acting account.
        account_id: nil,
        # A cursor; returns shipments after this position.
        after: nil,
        # A cursor; returns shipments before this position.
        before: nil,
        # Return shipments created after this ISO 8601 timestamp.
        created_after: nil,
        # Return shipments created before this ISO 8601 timestamp.
        created_before: nil,
        # The sort direction.
        direction: nil,
        # The number of shipments to return.
        first: nil,
        # The number of shipments to return from the end of the range.
        last: nil,
        # The field to sort by.
        order: nil,
        # Only shipments fulfilling these payments, each prefixed `pay_`. Repeat the
        # parameter to pass several, up to 100 per request — one paginated list covers all
        # of them.
        payment_id: nil,
        # Filter to shipments with this delivery status.
        status: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::ShipmentListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::ShipmentListParams::Order::OrSymbol,
            payment_id: T::Array[String],
            status: WhopSDK::ShipmentListParams::Status::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::ShipmentListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::ShipmentListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::ShipmentListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::ShipmentListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::ShipmentListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::ShipmentListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::ShipmentListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter to shipments with this delivery status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::ShipmentListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNKNOWN =
          T.let(:unknown, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        PRE_TRANSIT =
          T.let(:pre_transit, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        IN_TRANSIT =
          T.let(:in_transit, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        OUT_FOR_DELIVERY =
          T.let(
            :out_for_delivery,
            WhopSDK::ShipmentListParams::Status::TaggedSymbol
          )
        DELIVERED =
          T.let(:delivered, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        AVAILABLE_FOR_PICKUP =
          T.let(
            :available_for_pickup,
            WhopSDK::ShipmentListParams::Status::TaggedSymbol
          )
        RETURN_TO_SENDER =
          T.let(
            :return_to_sender,
            WhopSDK::ShipmentListParams::Status::TaggedSymbol
          )
        FAILURE =
          T.let(:failure, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        CANCELLED =
          T.let(:cancelled, WhopSDK::ShipmentListParams::Status::TaggedSymbol)
        ERROR = T.let(:error, WhopSDK::ShipmentListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::ShipmentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
