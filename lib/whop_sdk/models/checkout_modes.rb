# frozen_string_literal: true

module WhopSDK
  module Models
    # The different modes a checkout can be set to.
    module CheckoutModes
      extend WhopSDK::Internal::Type::Enum

      PAYMENT = :payment
      SETUP = :setup

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
