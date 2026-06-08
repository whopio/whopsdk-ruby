# typed: strong

module WhopSDK
  module Models
    class CardTransactionsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardTransactionsParams, WhopSDK::Internal::AnyHash)
        end

      # The business or user account ID that owns the cards.
      sig { returns(String) }
      attr_accessor :account_id

      # Filter to a single card on the account, by card ID.
      sig { returns(T.nilable(String)) }
      attr_reader :card_id

      sig { params(card_id: String).void }
      attr_writer :card_id

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
        returns(T.nilable(WhopSDK::CardTransactionsParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::CardTransactionsParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          account_id: String,
          card_id: String,
          created_after: String,
          created_before: String,
          page: Integer,
          per: Integer,
          status: WhopSDK::CardTransactionsParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business or user account ID that owns the cards.
        account_id:,
        # Filter to a single card on the account, by card ID.
        card_id: nil,
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
            account_id: String,
            card_id: String,
            created_after: String,
            created_before: String,
            page: Integer,
            per: Integer,
            status: WhopSDK::CardTransactionsParams::Status::OrSymbol,
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
            T.all(Symbol, WhopSDK::CardTransactionsParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, WhopSDK::CardTransactionsParams::Status::TaggedSymbol)
        COMPLETED =
          T.let(
            :completed,
            WhopSDK::CardTransactionsParams::Status::TaggedSymbol
          )
        REVERSED =
          T.let(
            :reversed,
            WhopSDK::CardTransactionsParams::Status::TaggedSymbol
          )
        DECLINED =
          T.let(
            :declined,
            WhopSDK::CardTransactionsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CardTransactionsParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
