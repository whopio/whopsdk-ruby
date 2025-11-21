# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of withdrawals
    module WithdrawalTypes
      extend WhopSDK::Internal::Type::Enum

      REGULAR = :regular
      CLAWBACK = :clawback

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
