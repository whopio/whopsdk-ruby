# typed: strong

module WhopSDK
  module Models
    class TransferListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::TransferListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Transfer ID.
      sig { returns(String) }
      attr_accessor :id

      # Transfer amount.
      sig { returns(Float) }
      attr_accessor :amount

      # When the transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Transfer currency.
      sig { returns(String) }
      attr_accessor :currency

      # Destination ledger account ID.
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # Source ledger account ID.
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # Fee charged for the transfer.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

      # Custom metadata attached to the transfer.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Transfer note.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # A transfer of credit between two ledger accounts.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: String,
          destination_ledger_account_id: String,
          origin_ledger_account_id: String,
          fee_amount: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Transfer ID.
        id:,
        # Transfer amount.
        amount:,
        # When the transfer was created.
        created_at:,
        # Transfer currency.
        currency:,
        # Destination ledger account ID.
        destination_ledger_account_id:,
        # Source ledger account ID.
        origin_ledger_account_id:,
        # Fee charged for the transfer.
        fee_amount: nil,
        # Custom metadata attached to the transfer.
        metadata: nil,
        # Transfer note.
        notes: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: String,
            destination_ledger_account_id: String,
            origin_ledger_account_id: String,
            fee_amount: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
