# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of the refund reference.
    module RefundReferenceStatus
      extend WhopSDK::Internal::Type::Enum

      AVAILABLE = :available
      PENDING = :pending
      UNAVAILABLE = :unavailable

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
