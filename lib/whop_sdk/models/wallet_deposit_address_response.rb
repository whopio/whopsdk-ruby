# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#deposit_address
    class WalletDepositAddressResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletDepositAddressResponse::Object }

      # @!attribute supported_networks
      #
      #   @return [Array<WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork>]
      required :supported_networks,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork] }

      # @!method initialize(address:, object:, supported_networks:)
      #   @param address [String]
      #   @param object [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Object]
      #   @param supported_networks [Array<WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork>]

      # @see WhopSDK::Models::WalletDepositAddressResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        DEPOSIT_ADDRESS = :deposit_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SupportedNetwork < WhopSDK::Internal::Type::BaseModel
        # @!attribute chain_id
        #
        #   @return [Integer]
        required :chain_id, Integer

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(chain_id:, name:)
        #   @param chain_id [Integer]
        #   @param name [String]
      end
    end
  end
end
