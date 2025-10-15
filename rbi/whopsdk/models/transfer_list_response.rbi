# typed: strong

module Whopsdk
  module Models
    class TransferListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::TransferListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The unique identifier of the credit transaction transfer
      sig { returns(String) }
      attr_accessor :id

      # The amount of the credit transaction transfer
      sig { returns(Float) }
      attr_accessor :amount

      # The timestamp when the credit transaction transfer was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the credit transaction transfer
      sig { returns(Whopsdk::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The ID of the destination ledger account
      sig { returns(String) }
      attr_accessor :destination_ledger_account_id

      # The decimal fee of the credit transaction transfer
      sig { returns(T.nilable(Float)) }
      attr_accessor :fee_amount

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
          currency: Whopsdk::Currency::OrSymbol,
          destination_ledger_account_id: String,
          fee_amount: T.nilable(Float),
          notes: T.nilable(String),
          origin_ledger_account_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the credit transaction transfer
        id:,
        # The amount of the credit transaction transfer
        amount:,
        # The timestamp when the credit transaction transfer was created
        created_at:,
        # The currency of the credit transaction transfer
        currency:,
        # The ID of the destination ledger account
        destination_ledger_account_id:,
        # The decimal fee of the credit transaction transfer
        fee_amount:,
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
            currency: Whopsdk::Currency::TaggedSymbol,
            destination_ledger_account_id: String,
            fee_amount: T.nilable(Float),
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
