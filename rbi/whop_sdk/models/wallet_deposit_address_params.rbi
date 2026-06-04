# typed: strong

module WhopSDK
  module Models
    class WalletDepositAddressParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WalletDepositAddressParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Optional asset symbol the caller intends to deposit (e.g. USDT). Unsupported
      # assets are rejected with a 400 rather than silently ignored.
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      # Optional network the caller intends to deposit on (e.g. plasma). Unsupported
      # networks are rejected with a 400 rather than silently ignored.
      sig do
        returns(
          T.nilable(WhopSDK::WalletDepositAddressParams::Network::OrSymbol)
        )
      end
      attr_reader :network

      sig do
        params(
          network: WhopSDK::WalletDepositAddressParams::Network::OrSymbol
        ).void
      end
      attr_writer :network

      sig do
        params(
          account_id: String,
          asset: String,
          network: WhopSDK::WalletDepositAddressParams::Network::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # Optional asset symbol the caller intends to deposit (e.g. USDT). Unsupported
        # assets are rejected with a 400 rather than silently ignored.
        asset: nil,
        # Optional network the caller intends to deposit on (e.g. plasma). Unsupported
        # networks are rejected with a 400 rather than silently ignored.
        network: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            asset: String,
            network: WhopSDK::WalletDepositAddressParams::Network::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional network the caller intends to deposit on (e.g. plasma). Unsupported
      # networks are rejected with a 400 rather than silently ignored.
      module Network
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::WalletDepositAddressParams::Network)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLASMA =
          T.let(
            :plasma,
            WhopSDK::WalletDepositAddressParams::Network::TaggedSymbol
          )
        BASE =
          T.let(
            :base,
            WhopSDK::WalletDepositAddressParams::Network::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            WhopSDK::WalletDepositAddressParams::Network::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WalletDepositAddressParams::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
