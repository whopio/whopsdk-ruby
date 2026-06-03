# typed: strong

module WhopSDK
  module Models
    class WalletSendResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::WalletSendResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(WhopSDK::Models::WalletSendResponse::Destination) }
      attr_reader :destination

      sig do
        params(
          destination: WhopSDK::Models::WalletSendResponse::Destination::OrHash
        ).void
      end
      attr_writer :destination

      sig { returns(WhopSDK::Models::WalletSendResponse::Object::TaggedSymbol) }
      attr_accessor :object

      sig { returns(WhopSDK::Models::WalletSendResponse::Source) }
      attr_reader :source

      sig do
        params(source: WhopSDK::Models::WalletSendResponse::Source::OrHash).void
      end
      attr_writer :source

      sig { returns(String) }
      attr_accessor :tx_hash

      sig do
        params(
          amount: String,
          currency: String,
          destination: WhopSDK::Models::WalletSendResponse::Destination::OrHash,
          object: WhopSDK::Models::WalletSendResponse::Object::OrSymbol,
          source: WhopSDK::Models::WalletSendResponse::Source::OrHash,
          tx_hash: String
        ).returns(T.attached_class)
      end
      def self.new(amount:, currency:, destination:, object:, source:, tx_hash:)
      end

      sig do
        override.returns(
          {
            amount: String,
            currency: String,
            destination: WhopSDK::Models::WalletSendResponse::Destination,
            object: WhopSDK::Models::WalletSendResponse::Object::TaggedSymbol,
            source: WhopSDK::Models::WalletSendResponse::Source,
            tx_hash: String
          }
        )
      end
      def to_hash
      end

      class Destination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletSendResponse::Destination,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(String) }
        attr_accessor :address

        sig do
          params(account_id: String, address: String).returns(T.attached_class)
        end
        def self.new(account_id:, address:)
        end

        sig { override.returns({ account_id: String, address: String }) }
        def to_hash
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletSendResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEND =
          T.let(
            :send,
            WhopSDK::Models::WalletSendResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::WalletSendResponse::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Source < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletSendResponse::Source,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(String) }
        attr_accessor :address

        sig do
          params(account_id: String, address: String).returns(T.attached_class)
        end
        def self.new(account_id:, address:)
        end

        sig { override.returns({ account_id: String, address: String }) }
        def to_hash
        end
      end
    end
  end
end
