# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#send_
    class WalletSendResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute destination
      #
      #   @return [WhopSDK::Models::WalletSendResponse::Destination]
      required :destination, -> { WhopSDK::Models::WalletSendResponse::Destination }

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::WalletSendResponse::Object]
      required :object, enum: -> { WhopSDK::Models::WalletSendResponse::Object }

      # @!attribute source
      #
      #   @return [WhopSDK::Models::WalletSendResponse::Source]
      required :source, -> { WhopSDK::Models::WalletSendResponse::Source }

      # @!attribute tx_hash
      #
      #   @return [String]
      required :tx_hash, String

      # @!method initialize(amount:, currency:, destination:, object:, source:, tx_hash:)
      #   @param amount [String]
      #   @param currency [String]
      #   @param destination [WhopSDK::Models::WalletSendResponse::Destination]
      #   @param object [Symbol, WhopSDK::Models::WalletSendResponse::Object]
      #   @param source [WhopSDK::Models::WalletSendResponse::Source]
      #   @param tx_hash [String]

      # @see WhopSDK::Models::WalletSendResponse#destination
      class Destination < WhopSDK::Internal::Type::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!method initialize(account_id:, address:)
        #   @param account_id [String]
        #   @param address [String]
      end

      # @see WhopSDK::Models::WalletSendResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SEND = :send

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::WalletSendResponse#source
      class Source < WhopSDK::Internal::Type::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!method initialize(account_id:, address:)
        #   @param account_id [String]
        #   @param address [String]
      end
    end
  end
end
