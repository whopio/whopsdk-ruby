# typed: strong

module WhopSDK
  module Models
    class WalletListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::WalletListResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::Models::WalletListResponse::Wallet]) }
      attr_accessor :wallets

      sig do
        params(
          wallets: T::Array[WhopSDK::Models::WalletListResponse::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(wallets:)
      end

      sig do
        override.returns(
          { wallets: T::Array[WhopSDK::Models::WalletListResponse::Wallet] }
        )
      end
      def to_hash
      end

      class Wallet < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletListResponse::Wallet,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :address

        sig { returns(String) }
        attr_accessor :balance_usd

        sig { returns(String) }
        attr_accessor :network

        sig do
          params(address: String, balance_usd: String, network: String).returns(
            T.attached_class
          )
        end
        def self.new(address:, balance_usd:, network:)
        end

        sig do
          override.returns(
            { address: String, balance_usd: String, network: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
