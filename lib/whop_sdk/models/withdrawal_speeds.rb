# frozen_string_literal: true

module WhopSDK
  module Models
    # The different speeds of withdrawals
    module WithdrawalSpeeds
      extend WhopSDK::Internal::Type::Enum

      STANDARD = :standard
      INSTANT = :instant

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
