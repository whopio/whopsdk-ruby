# typed: strong

module WhopSDK
  module Models
    class WalletSignMessageResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletSignMessageResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Integer) }
      attr_accessor :chain_id

      sig do
        returns(
          WhopSDK::Models::WalletSignMessageResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(String) }
      attr_accessor :type

      sig do
        params(
          address: String,
          chain_id: Integer,
          object: WhopSDK::Models::WalletSignMessageResponse::Object::OrSymbol,
          signature: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(address:, chain_id:, object:, signature:, type:)
      end

      sig do
        override.returns(
          {
            address: String,
            chain_id: Integer,
            object:
              WhopSDK::Models::WalletSignMessageResponse::Object::TaggedSymbol,
            signature: String,
            type: String
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletSignMessageResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGNATURE =
          T.let(
            :signature,
            WhopSDK::Models::WalletSignMessageResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletSignMessageResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
