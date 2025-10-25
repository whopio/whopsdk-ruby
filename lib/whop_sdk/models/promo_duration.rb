# frozen_string_literal: true

module WhopSDK
  module Models
    # The duration setting for the promo code
    module PromoDuration
      extend WhopSDK::Internal::Type::Enum

      FOREVER = :forever
      ONCE = :once
      REPEATING = :repeating

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
