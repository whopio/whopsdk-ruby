# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#sign_message
    class WalletSignMessageResponse < WhopSDK::Internal::Type::BaseModel
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
      #   @return [Symbol, WhopSDK::Models::WalletSignMessageResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletSignMessageResponse::Object }

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!method initialize(address:, chain_id:, object:, signature:, type:)
      #   @param address [String]
      #   @param chain_id [Integer]
      #   @param object [Symbol, WhopSDK::Models::WalletSignMessageResponse::Object]
      #   @param signature [String]
      #   @param type [String]

      # @see WhopSDK::Models::WalletSignMessageResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SIGNATURE = :signature

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
