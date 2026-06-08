# typed: strong

module WhopSDK
  module Models
    class CardCardTransactionsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardCardTransactionsParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Only return transactions created at or after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return transactions created strictly before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The page number to retrieve.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # The number of transactions to return per page. Capped at 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :per

      sig { params(per: Integer).void }
      attr_writer :per

      # Filter to transactions with this status.
      sig do
        returns(
          T.nilable(WhopSDK::CardCardTransactionsParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: WhopSDK::CardCardTransactionsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          created_after: String,
          created_before: String,
          page: Integer,
          per: Integer,
          status: WhopSDK::CardCardTransactionsParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Only return transactions created at or after this ISO 8601 timestamp.
        created_after: nil,
        # Only return transactions created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # The page number to retrieve.
        page: nil,
        # The number of transactions to return per page. Capped at 50.
        per: nil,
        # Filter to transactions with this status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_after: String,
            created_before: String,
            page: Integer,
            per: Integer,
            status: WhopSDK::CardCardTransactionsParams::Status::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter to transactions with this status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CardCardTransactionsParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::CardCardTransactionsParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            WhopSDK::CardCardTransactionsParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :reversed,
            WhopSDK::CardCardTransactionsParams::Status::TaggedSymbol
          )
        DECLINED =
          T.let(
            :declined,
            WhopSDK::CardCardTransactionsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CardCardTransactionsParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
