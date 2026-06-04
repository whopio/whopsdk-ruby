# typed: strong

module WhopSDK
  module Models
    class WalletSignTransactionResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletSignTransactionResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Integer) }
      attr_accessor :chain_id

      sig do
        returns(
          WhopSDK::Models::WalletSignTransactionResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :to

      sig { returns(String) }
      attr_accessor :tx_hash

      sig do
        params(
          address: String,
          chain_id: Integer,
          object:
            WhopSDK::Models::WalletSignTransactionResponse::Object::OrSymbol,
          to: String,
          tx_hash: String
        ).returns(T.attached_class)
      end
      def self.new(address:, chain_id:, object:, to:, tx_hash:)
      end

      sig do
        override.returns(
          {
            address: String,
            chain_id: Integer,
            object:
              WhopSDK::Models::WalletSignTransactionResponse::Object::TaggedSymbol,
            to: String,
            tx_hash: String
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::WalletSignTransactionResponse::Object
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION =
          T.let(
            :transaction,
            WhopSDK::Models::WalletSignTransactionResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletSignTransactionResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
