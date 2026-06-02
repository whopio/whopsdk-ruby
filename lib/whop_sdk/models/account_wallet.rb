# frozen_string_literal: true

module WhopSDK
  module Models
    class AccountWallet < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the wallet, which will look like wallet\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute address
      #   The on-chain address of the wallet
      #
      #   @return [String]
      required :address, String

      # @!attribute network
      #   The blockchain network the wallet lives on
      #
      #   @return [Symbol, WhopSDK::Models::AccountWallet::Network]
      required :network, enum: -> { WhopSDK::AccountWallet::Network }

      # @!method initialize(id:, address:, network:)
      #   @param id [String] The ID of the wallet, which will look like wallet\_******\*******
      #
      #   @param address [String] The on-chain address of the wallet
      #
      #   @param network [Symbol, WhopSDK::Models::AccountWallet::Network] The blockchain network the wallet lives on

      # The blockchain network the wallet lives on
      #
      # @see WhopSDK::Models::AccountWallet#network
      module Network
        extend WhopSDK::Internal::Type::Enum

        SOLANA = :solana
        ETHEREUM = :ethereum
        BITCOIN = :bitcoin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
