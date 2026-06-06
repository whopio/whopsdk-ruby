# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#pin
    class CardPin < WhopSDK::Internal::Type::BaseModel
      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardPin::Object]
      required :object, enum: -> { WhopSDK::CardPin::Object }

      # @!attribute pin
      #   The card PIN.
      #
      #   @return [String]
      required :pin, String

      # @!method initialize(object:, pin:)
      #   @param object [Symbol, WhopSDK::Models::CardPin::Object]
      #
      #   @param pin [String] The card PIN.

      # @see WhopSDK::Models::CardPin#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_PIN = :card_pin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
