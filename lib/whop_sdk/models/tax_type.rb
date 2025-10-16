# frozen_string_literal: true

module WhopSDK
  module Models
    # Whether or not the tax is included in a plan's price (or if it hasn't been set
    # up)
    module TaxType
      extend WhopSDK::Internal::Type::Enum

      INCLUSIVE = :inclusive
      EXCLUSIVE = :exclusive
      UNSPECIFIED = :unspecified

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
