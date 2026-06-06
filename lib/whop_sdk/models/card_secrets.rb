# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#secrets
    class CardSecrets < WhopSDK::Internal::Type::BaseModel
      # @!attribute cvc
      #   The card CVC/CVV.
      #
      #   @return [String]
      required :cvc, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardSecrets::Object]
      required :object, enum: -> { WhopSDK::CardSecrets::Object }

      # @!attribute pan
      #   The full card number (PAN).
      #
      #   @return [String]
      required :pan, String

      # @!attribute name_on_card
      #   The cardholder name from the card provider.
      #
      #   @return [String, nil]
      optional :name_on_card, String, nil?: true

      # @!method initialize(cvc:, object:, pan:, name_on_card: nil)
      #   @param cvc [String] The card CVC/CVV.
      #
      #   @param object [Symbol, WhopSDK::Models::CardSecrets::Object]
      #
      #   @param pan [String] The full card number (PAN).
      #
      #   @param name_on_card [String, nil] The cardholder name from the card provider.

      # @see WhopSDK::Models::CardSecrets#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_SECRETS = :card_secrets

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
