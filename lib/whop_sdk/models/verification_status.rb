# frozen_string_literal: true

module WhopSDK
  module Models
    # A status for a verification.
    module VerificationStatus
      extend WhopSDK::Internal::Type::Enum

      REQUIRES_INPUT = :requires_input
      PROCESSING = :processing
      VERIFIED = :verified
      CANCELED = :canceled
      CREATED = :created
      STARTED = :started
      SUBMITTED = :submitted
      APPROVED = :approved
      DECLINED = :declined
      RESUBMISSION_REQUESTED = :resubmission_requested
      EXPIRED = :expired
      ABANDONED = :abandoned
      REVIEW = :review

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
