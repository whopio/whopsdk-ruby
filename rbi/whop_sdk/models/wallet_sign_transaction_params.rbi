# typed: strong

module WhopSDK
  module Models
    class WalletSignTransactionParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::WalletSignTransactionParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_id

      # EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
      sig { returns(Integer) }
      attr_accessor :chain_id

      # Target contract or recipient address (0x...).
      sig { returns(String) }
      attr_accessor :to

      # Hex-encoded calldata. Defaults to 0x (plain transfer).
      sig { returns(T.nilable(String)) }
      attr_reader :data

      sig { params(data: String).void }
      attr_writer :data

      # Optional retry-safety key (max 256 chars). Retried requests with the same key
      # within 24 hours return the original transaction instead of broadcasting a second
      # one.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Hex-encoded wei value. Defaults to 0x0.
      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      sig do
        params(
          account_id: String,
          chain_id: Integer,
          to: String,
          data: String,
          idempotency_key: String,
          value: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
        chain_id:,
        # Target contract or recipient address (0x...).
        to:,
        # Hex-encoded calldata. Defaults to 0x (plain transfer).
        data: nil,
        # Optional retry-safety key (max 256 chars). Retried requests with the same key
        # within 24 hours return the original transaction instead of broadcasting a second
        # one.
        idempotency_key: nil,
        # Hex-encoded wei value. Defaults to 0x0.
        value: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            chain_id: Integer,
            to: String,
            data: String,
            idempotency_key: String,
            value: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
