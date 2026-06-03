# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#list
    class WalletListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute wallets
      #
      #   @return [Array<WhopSDK::Models::WalletListResponse::Wallet>]
      required :wallets, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletListResponse::Wallet] }

      # @!method initialize(wallets:)
      #   @param wallets [Array<WhopSDK::Models::WalletListResponse::Wallet>]

      class Wallet < WhopSDK::Internal::Type::BaseModel
        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!attribute balance_usd
        #
        #   @return [String]
        required :balance_usd, String

        # @!attribute network
        #
        #   @return [String]
        required :network, String

        # @!method initialize(address:, balance_usd:, network:)
        #   @param address [String]
        #   @param balance_usd [String]
        #   @param network [String]
      end
    end
  end
end
