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

      # The unique identifier for the credit transaction transfer.
      sig { returns(String) }
      attr_accessor :id

      # The transfer amount in the currency specified by the currency field. For
      # example, 10.43 represents $10.43 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the credit transaction transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency in which this transfer amount is denominated.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The unique identifier of the ledger account receiving the funds.
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # The flat fee amount deducted from this transfer, in the transfer's currency.
      # Null if no flat fee was applied.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

      # Custom key-value pairs attached to this transfer. Maximum 50 keys, 500
      # characters per key, 5000 characters per value.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # A free-text note attached to this transfer by the sender. Null if no note was
      # provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The unique identifier of the ledger account that sent the funds.
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # A transfer of credit between two ledger accounts.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          destination_ledger_account_id: String,
          fee_amount: T.nilable(Float),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          origin_ledger_account_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the credit transaction transfer.
        id:,
        # The transfer amount in the currency specified by the currency field. For
        # example, 10.43 represents $10.43 USD.
        amount:,
        # The datetime the credit transaction transfer was created.
        created_at:,
        # The currency in which this transfer amount is denominated.
        currency:,
        # The unique identifier of the ledger account receiving the funds.
        destination_ledger_account_id:,
        # The flat fee amount deducted from this transfer, in the transfer's currency.
        # Null if no flat fee was applied.
        fee_amount:,
        # Custom key-value pairs attached to this transfer. Maximum 50 keys, 500
        # characters per key, 5000 characters per value.
        metadata:,
        # A free-text note attached to this transfer by the sender. Null if no note was
        # provided.
        notes:,
        # The unique identifier of the ledger account that sent the funds.
        origin_ledger_account_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            destination_ledger_account_id: String,
            fee_amount: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String),
            origin_ledger_account_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
