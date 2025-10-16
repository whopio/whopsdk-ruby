# frozen_string_literal: true

module WhopSDK
  module Models
    # The methods of how a plan can be released.
    module ReleaseMethod
      extend WhopSDK::Internal::Type::Enum

      BUY_NOW = :buy_now
      WAITLIST = :waitlist

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
