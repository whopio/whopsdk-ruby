# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#supported_assets
    class WalletSupportedAssetsResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [Array<WhopSDK::Models::WalletSupportedAssetsResponse::Asset>]
      required :assets,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::WalletSupportedAssetsResponse::Asset] }

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletSupportedAssetsResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletSupportedAssetsResponse::Object }

      # @!method initialize(assets:, object:)
      #   @param assets [Array<WhopSDK::Models::WalletSupportedAssetsResponse::Asset>]
      #   @param object [Symbol, WhopSDK::Models::WalletSupportedAssetsResponse::Object]

      class Asset < WhopSDK::Internal::Type::BaseModel
        # @!attribute chain_id
        #
        #   @return [Integer]
        required :chain_id, Integer

        # @!attribute decimals
        #
        #   @return [Integer]
        required :decimals, Integer

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute network
        #
        #   @return [String]
        required :network, String

        # @!attribute symbol
        #
        #   @return [String]
        required :symbol, String

        # @!attribute token_address
        #
        #   @return [String]
        required :token_address, String

        # @!attribute tradable
        #
        #   @return [Boolean]
        required :tradable, WhopSDK::Internal::Type::Boolean

        # @!method initialize(chain_id:, decimals:, name:, network:, symbol:, token_address:, tradable:)
        #   @param chain_id [Integer]
        #   @param decimals [Integer]
        #   @param name [String]
        #   @param network [String]
        #   @param symbol [String]
        #   @param token_address [String]
        #   @param tradable [Boolean]
      end

      # @see WhopSDK::Models::WalletSupportedAssetsResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SUPPORTED_ASSETS = :supported_assets

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
