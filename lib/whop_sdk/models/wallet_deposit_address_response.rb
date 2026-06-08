# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#deposit_address
    class WalletDepositAddressResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute evm_address
      #
      #   @return [String, nil]
      required :evm_address, String, nil?: true

      # @!attribute hosted_url
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletDepositAddressResponse::Object }

      # @!attribute solana_address
      #
      #   @return [String, nil]
      required :solana_address, String, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Status]
      required :status, enum: -> { WhopSDK::Models::WalletDepositAddressResponse::Status }

      # @!attribute supported_networks
      #
      #   @return [Array<WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork>]
      required :supported_networks,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork] }

      # @!attribute asset
      #   Echo of the validated asset filter, present when the caller passed ?asset=.
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute network
      #   Echo of the validated network filter, present when the caller passed ?network=.
      #
      #   @return [String, nil]
      optional :network, String

      # @!method initialize(evm_address:, hosted_url:, object:, solana_address:, status:, supported_networks:, asset: nil, network: nil)
      #   @param evm_address [String, nil]
      #
      #   @param hosted_url [String, nil]
      #
      #   @param object [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Object]
      #
      #   @param solana_address [String, nil]
      #
      #   @param status [Symbol, WhopSDK::Models::WalletDepositAddressResponse::Status]
      #
      #   @param supported_networks [Array<WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork>]
      #
      #   @param asset [String] Echo of the validated asset filter, present when the caller passed ?asset=.
      #
      #   @param network [String] Echo of the validated network filter, present when the caller passed ?network=.

      # @see WhopSDK::Models::WalletDepositAddressResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        DEPOSIT_ADDRESS = :deposit_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::WalletDepositAddressResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        READY = :ready
        PROVISIONING = :provisioning

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SupportedNetwork < WhopSDK::Internal::Type::BaseModel
        # @!attribute address_kind
        #
        #   @return [Symbol, WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind]
        required :address_kind,
                 enum: -> { WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind }

        # @!attribute chain_id
        #
        #   @return [Integer, nil]
        required :chain_id, Integer, nil?: true

        # @!attribute network
        #
        #   @return [String]
        required :network, String

        # @!attribute onramp_supported
        #
        #   @return [Boolean]
        required :onramp_supported, WhopSDK::Internal::Type::Boolean

        # @!method initialize(address_kind:, chain_id:, network:, onramp_supported:)
        #   @param address_kind [Symbol, WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind]
        #   @param chain_id [Integer, nil]
        #   @param network [String]
        #   @param onramp_supported [Boolean]

        # @see WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork#address_kind
        module AddressKind
          extend WhopSDK::Internal::Type::Enum

          EVM = :evm
          SOLANA = :solana

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
