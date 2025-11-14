# frozen_string_literal: true

module WhopSDK
  module Models
    # The different statuses for a Refund object
    module RefundStatus
      extend WhopSDK::Internal::Type::Enum

      PENDING = :pending
      REQUIRES_ACTION = :requires_action
      SUCCEEDED = :succeeded
      FAILED = :failed
      CANCELED = :canceled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
