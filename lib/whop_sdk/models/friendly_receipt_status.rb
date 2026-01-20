# frozen_string_literal: true

module WhopSDK
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      SUCCEEDED = :succeeded
      PENDING = :pending
      FAILED = :failed
      PAST_DUE = :past_due
      CANCELED = :canceled
      PRICE_TOO_LOW = :price_too_low
      UNCOLLECTIBLE = :uncollectible
      REFUNDED = :refunded
      AUTO_REFUNDED = :auto_refunded
      PARTIALLY_REFUNDED = :partially_refunded
      OPEN_RESOLUTION = :open_resolution
      DISPUTE_WARNING = :dispute_warning
      DISPUTE_NEEDS_RESPONSE = :dispute_needs_response
      DISPUTE_WARNING_NEEDS_RESPONSE = :dispute_warning_needs_response
      RESOLUTION_NEEDS_RESPONSE = :resolution_needs_response
      DISPUTE_UNDER_REVIEW = :dispute_under_review
      DISPUTE_WARNING_UNDER_REVIEW = :dispute_warning_under_review
      RESOLUTION_UNDER_REVIEW = :resolution_under_review
      DISPUTE_WON = :dispute_won
      DISPUTE_WARNING_CLOSED = :dispute_warning_closed
      RESOLUTION_WON = :resolution_won
      DISPUTE_LOST = :dispute_lost
      DISPUTE_CLOSED = :dispute_closed
      RESOLUTION_LOST = :resolution_lost
      DRAFTED = :drafted
      INCOMPLETE = :incomplete
      UNRESOLVED = :unresolved
      OPEN_DISPUTE = :open_dispute

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
