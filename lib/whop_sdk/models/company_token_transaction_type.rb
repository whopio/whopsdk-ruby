# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of token transaction
    module CompanyTokenTransactionType
      extend WhopSDK::Internal::Type::Enum

      ADD = :add
      SUBTRACT = :subtract
      TRANSFER = :transfer

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
