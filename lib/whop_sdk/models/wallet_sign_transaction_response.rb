# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#sign_transaction
    class WalletSignTransactionResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_id
      #
      #   @return [Integer]
      required :chain_id, Integer

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletSignTransactionResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletSignTransactionResponse::Object }

      # @!attribute to
      #
      #   @return [String]
      required :to, String

      # @!attribute tx_hash
      #
      #   @return [String]
      required :tx_hash, String

      # @!method initialize(address:, chain_id:, object:, to:, tx_hash:)
      #   @param address [String]
      #   @param chain_id [Integer]
      #   @param object [Symbol, WhopSDK::Models::WalletSignTransactionResponse::Object]
      #   @param to [String]
      #   @param tx_hash [String]

      # @see WhopSDK::Models::WalletSignTransactionResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        TRANSACTION = :transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
