# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of tax inclusivity applied to the receipt, for determining whether the
    # tax is included in the final price, or paid on top.
    module ReceiptTaxBehavior
      extend WhopSDK::Internal::Type::Enum

      EXCLUSIVE = :exclusive
      INCLUSIVE = :inclusive
      UNSPECIFIED = :unspecified
      UNABLE_TO_COLLECT = :unable_to_collect

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
