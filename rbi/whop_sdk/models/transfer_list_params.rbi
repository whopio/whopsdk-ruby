# typed: strong

module WhopSDK
  module Models
    class TransferListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::TransferListParams, WhopSDK::Internal::AnyHash)
        end

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only transfers created strictly after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only transfers created strictly before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Filter to transfers received by this account.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_id

      sig { params(destination_id: String).void }
      attr_writer :destination_id

      # Sort direction. Defaults to desc.
      sig do
        returns(T.nilable(WhopSDK::TransferListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::TransferListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # Number of transfers to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of transfers to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort column. Defaults to created_at.
      sig { returns(T.nilable(WhopSDK::TransferListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::TransferListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to transfers sent from this account.
      sig { returns(T.nilable(String)) }
      attr_reader :origin_id

      sig { params(origin_id: String).void }
      attr_writer :origin_id

      sig do
        params(
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          destination_id: String,
          direction: WhopSDK::TransferListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::TransferListParams::Order::OrSymbol,
          origin_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only transfers created strictly after this ISO 8601 timestamp.
        created_after: nil,
        # Only transfers created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # Filter to transfers received by this account.
        destination_id: nil,
        # Sort direction. Defaults to desc.
        direction: nil,
        # Number of transfers to return from the start of the window.
        first: nil,
        # Number of transfers to return from the end of the window.
        last: nil,
        # Sort column. Defaults to created_at.
        order: nil,
        # Filter to transfers sent from this account.
        origin_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            destination_id: String,
            direction: WhopSDK::TransferListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::TransferListParams::Order::OrSymbol,
            origin_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::TransferListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::TransferListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::TransferListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::TransferListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort column. Defaults to created_at.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::TransferListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::TransferListParams::Order::TaggedSymbol)
        AMOUNT =
          T.let(:amount, WhopSDK::TransferListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::TransferListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
