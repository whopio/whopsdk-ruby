# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of a withdrawal request
    module WithdrawalStatus
      extend WhopSDK::Internal::Type::Enum

      REQUESTED = :requested
      AWAITING_PAYMENT = :awaiting_payment
      IN_TRANSIT = :in_transit
      COMPLETED = :completed
      FAILED = :failed
      CANCELED = :canceled
      DENIED = :denied

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
