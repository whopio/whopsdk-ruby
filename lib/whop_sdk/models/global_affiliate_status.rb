# frozen_string_literal: true

module WhopSDK
  module Models
    # The different statuses of the global affiliate program for a product.
    module GlobalAffiliateStatus
      extend WhopSDK::Internal::Type::Enum

      ENABLED = :enabled
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
