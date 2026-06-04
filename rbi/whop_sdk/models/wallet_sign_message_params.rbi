# typed: strong

module WhopSDK
  module Models
    class WalletSignMessageParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WalletSignMessageParams, WhopSDK::Internal::AnyHash)
        end

      # The business or user account ID whose wallet signs.
      sig { returns(String) }
      attr_accessor :account_id

      # EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma).
      sig { returns(Integer) }
      attr_accessor :chain_id

      # A UTF-8 string for personal_sign, or an EIP-712 object (domain, types,
      # primaryType, message) for typed_data.
      sig { returns(T.anything) }
      attr_accessor :message

      # Signature scheme.
      sig { returns(WhopSDK::WalletSignMessageParams::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          account_id: String,
          chain_id: Integer,
          message: T.anything,
          type: WhopSDK::WalletSignMessageParams::Type::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business or user account ID whose wallet signs.
        account_id:,
        # EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma).
        chain_id:,
        # A UTF-8 string for personal_sign, or an EIP-712 object (domain, types,
        # primaryType, message) for typed_data.
        message:,
        # Signature scheme.
        type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            chain_id: Integer,
            message: T.anything,
            type: WhopSDK::WalletSignMessageParams::Type::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Signature scheme.
      module Type
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::WalletSignMessageParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSONAL_SIGN =
          T.let(
            :personal_sign,
            WhopSDK::WalletSignMessageParams::Type::TaggedSymbol
          )
        TYPED_DATA =
          T.let(
            :typed_data,
            WhopSDK::WalletSignMessageParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WalletSignMessageParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
