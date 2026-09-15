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

      # Return results after this cursor. Use `page_info.end_cursor` from the previous
      # response to fetch the next page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Return results before this cursor. Use `page_info.start_cursor` from the
      # previous response to fetch the previous page.
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

      # Filter to transfers received by this account. Provide this or origin_id.
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

      # Number of results to return from the start of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of results to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort column. Defaults to created_at.
      sig { returns(T.nilable(WhopSDK::TransferListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::TransferListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to transfers sent from this account. Provide this or destination_id.
      sig { returns(T.nilable(String)) }
      attr_reader :origin_id

      sig { params(origin_id: String).void }
      attr_writer :origin_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

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
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Return results after this cursor. Use `page_info.end_cursor` from the previous
        # response to fetch the next page.
        after: nil,
        # Return results before this cursor. Use `page_info.start_cursor` from the
        # previous response to fetch the previous page.
        before: nil,
        # Only transfers created strictly after this ISO 8601 timestamp.
        created_after: nil,
        # Only transfers created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # Filter to transfers received by this account. Provide this or origin_id.
        destination_id: nil,
        # Sort direction. Defaults to desc.
        direction: nil,
        # Number of results to return from the start of the range.
        first: nil,
        # Number of results to return from the end of the range.
        last: nil,
        # Sort column. Defaults to created_at.
        order: nil,
        # Filter to transfers sent from this account. Provide this or destination_id.
        origin_id: nil,
        api_version_date: nil,
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
            api_version_date: String,
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
