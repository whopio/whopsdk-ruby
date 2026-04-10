# frozen_string_literal: true

module WhopSDK
  module Models
    # The different font families available for checkout pages.
    module CheckoutFont
      extend WhopSDK::Internal::Type::Enum

      SYSTEM = :system
      ROBOTO = :roboto
      OPEN_SANS = :open_sans

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
