# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#sign_message
    class WalletSignMessageParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute chain_id
      #   EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma).
      #
      #   @return [Integer]
      required :chain_id, Integer

      # @!attribute message
      #   A UTF-8 string for personal_sign, or an EIP-712 object (domain, types,
      #   primaryType, message) for typed_data.
      #
      #   @return [Object]
      required :message, WhopSDK::Internal::Type::Unknown

      # @!attribute type
      #   Signature scheme.
      #
      #   @return [Symbol, WhopSDK::Models::WalletSignMessageParams::Type]
      required :type, enum: -> { WhopSDK::WalletSignMessageParams::Type }

      # @!method initialize(account_id:, chain_id:, message:, type:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WalletSignMessageParams} for more details.
      #
      #   @param account_id [String]
      #
      #   @param chain_id [Integer] EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma).
      #
      #   @param message [Object] A UTF-8 string for personal_sign, or an EIP-712 object (domain, types, primaryTy
      #
      #   @param type [Symbol, WhopSDK::Models::WalletSignMessageParams::Type] Signature scheme.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Signature scheme.
      module Type
        extend WhopSDK::Internal::Type::Enum

        PERSONAL_SIGN = :personal_sign
        TYPED_DATA = :typed_data

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
