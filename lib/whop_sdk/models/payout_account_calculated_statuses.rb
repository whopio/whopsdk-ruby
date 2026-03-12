# frozen_string_literal: true

module WhopSDK
  module Models
    # The granular calculated statuses reflecting payout account KYC and withdrawal
    # readiness.
    module PayoutAccountCalculatedStatuses
      extend WhopSDK::Internal::Type::Enum

      CONNECTED = :connected
      DISABLED = :disabled
      ACTION_REQUIRED = :action_required
      PENDING_VERIFICATION = :pending_verification
      VERIFICATION_FAILED = :verification_failed
      NOT_STARTED = :not_started

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
