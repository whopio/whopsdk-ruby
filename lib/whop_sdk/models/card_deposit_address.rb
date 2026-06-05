# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#deposit_address
    class CardDepositAddress < WhopSDK::Internal::Type::BaseModel
      # @!attribute address
      #   The on-chain deposit address used to fund the card account.
      #
      #   @return [String]
      required :address, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardDepositAddress::Object]
      required :object, enum: -> { WhopSDK::CardDepositAddress::Object }

      # @!method initialize(address:, object:)
      #   @param address [String] The on-chain deposit address used to fund the card account.
      #
      #   @param object [Symbol, WhopSDK::Models::CardDepositAddress::Object]

      # @see WhopSDK::Models::CardDepositAddress#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_DEPOSIT_ADDRESS = :card_deposit_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
