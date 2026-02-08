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

      # The amount of the transfer. Provided as a number in the specified currency. Eg:
      # 10.43 for $10.43 USD.
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the credit transaction transfer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the credit transaction transfer
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The ID of the destination ledger account
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # The decimal fee of the credit transaction transfer
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

      # Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      # 5000 chars per value.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The notes of the credit transaction transfer
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # The ID of the origin ledger account
      sig { returns(String) }
      attr_accessor :origin_ledger_account_id

      # Credit Transaction Transfer
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
        # The amount of the transfer. Provided as a number in the specified currency. Eg:
        # 10.43 for $10.43 USD.
        amount:,
        # The datetime the credit transaction transfer was created.
        created_at:,
        # The currency of the credit transaction transfer
        currency:,
        # The ID of the destination ledger account
        destination_ledger_account_id:,
        # The decimal fee of the credit transaction transfer
        fee_amount:,
        # Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
        # 5000 chars per value.
        metadata:,
        # The notes of the credit transaction transfer
        notes:,
        # The ID of the origin ledger account
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
