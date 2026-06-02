# typed: strong

module WhopSDK
  module Models
    class AccountWallet < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountWallet, WhopSDK::Internal::AnyHash)
        end

      # The ID of the wallet, which will look like wallet\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # The on-chain address of the wallet
      sig { returns(String) }
      attr_accessor :address

      # The blockchain network the wallet lives on
      sig { returns(WhopSDK::AccountWallet::Network::TaggedSymbol) }
      attr_accessor :network

      sig do
        params(
          id: String,
          address: String,
          network: WhopSDK::AccountWallet::Network::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet, which will look like wallet\_******\*******
        id:,
        # The on-chain address of the wallet
        address:,
        # The blockchain network the wallet lives on
        network:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address: String,
            network: WhopSDK::AccountWallet::Network::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The blockchain network the wallet lives on
      module Network
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AccountWallet::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA = T.let(:solana, WhopSDK::AccountWallet::Network::TaggedSymbol)
        ETHEREUM =
          T.let(:ethereum, WhopSDK::AccountWallet::Network::TaggedSymbol)
        BITCOIN = T.let(:bitcoin, WhopSDK::AccountWallet::Network::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AccountWallet::Network::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
