# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#sign_transaction
    class WalletSignTransactionParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute chain_id
      #   EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
      #
      #   @return [Integer]
      required :chain_id, Integer

      # @!attribute to
      #   Target contract or recipient address (0x...).
      #
      #   @return [String]
      required :to, String

      # @!attribute data
      #   Hex-encoded calldata. Defaults to 0x (plain transfer).
      #
      #   @return [String, nil]
      optional :data, String

      # @!attribute value
      #   Hex-encoded wei value. Defaults to 0x0.
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(account_id:, chain_id:, to:, data: nil, value: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param chain_id [Integer] EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
      #
      #   @param to [String] Target contract or recipient address (0x...).
      #
      #   @param data [String] Hex-encoded calldata. Defaults to 0x (plain transfer).
      #
      #   @param value [String] Hex-encoded wei value. Defaults to 0x0.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
