# frozen_string_literal: true

module WhopSDK
  module Models
    # The different border-radius styles available for checkout pages.
    module CheckoutShape
      extend WhopSDK::Internal::Type::Enum

      ROUNDED = :rounded
      PILL = :pill
      RECTANGULAR = :rectangular

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
