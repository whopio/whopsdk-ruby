# frozen_string_literal: true

module WhopSDK
  module Models
    # The different fee types for a withdrawal.
    module WithdrawalFeeTypes
      extend WhopSDK::Internal::Type::Enum

      EXCLUSIVE = :exclusive
      INCLUSIVE = :inclusive

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
