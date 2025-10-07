# typed: strong

module Whopsdk
  module Models
    class TransferCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::TransferCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The amount to withdraw
      sig { returns(Float) }
      attr_accessor :amount

      # The currency that is being withdrawn.
      sig { returns(Whopsdk::Currency::OrSymbol) }
      attr_accessor :currency

      # The ID of the destination account which will receive the funds (either a User
      # ID, Company ID, or LedgerAccount ID)
      sig { returns(String) }
      attr_accessor :destination_id

      # The ID of the origin account which will send the funds (either a User ID,
      # Company ID, or LedgerAccount ID)
      sig { returns(String) }
      attr_accessor :origin_id

      # A unique key to ensure idempotence. Use a UUID or similar.
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotence_key

      # Notes for the transfer. Maximum of 50 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      sig do
        params(
          amount: Float,
          currency: Whopsdk::Currency::OrSymbol,
          destination_id: String,
          origin_id: String,
          idempotence_key: T.nilable(String),
          notes: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount to withdraw
        amount:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the destination account which will receive the funds (either a User
        # ID, Company ID, or LedgerAccount ID)
        destination_id:,
        # The ID of the origin account which will send the funds (either a User ID,
        # Company ID, or LedgerAccount ID)
        origin_id:,
        # A unique key to ensure idempotence. Use a UUID or similar.
        idempotence_key: nil,
        # Notes for the transfer. Maximum of 50 characters.
        notes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            currency: Whopsdk::Currency::OrSymbol,
            destination_id: String,
            origin_id: String,
            idempotence_key: T.nilable(String),
            notes: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
