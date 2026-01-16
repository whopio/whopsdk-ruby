# frozen_string_literal: true

module WhopSDK
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      DRAFTED = :drafted
      SUCCEEDED = :succeeded
      INCOMPLETE = :incomplete
      REFUNDED = :refunded
      PRICE_TOO_LOW = :price_too_low
      UNCOLLECTIBLE = :uncollectible
      CANCELED = :canceled
      PARTIALLY_REFUNDED = :partially_refunded
      FAILED = :failed
      OPEN_DISPUTE = :open_dispute
      PAST_DUE = :past_due
      AUTO_REFUNDED = :auto_refunded
      DISPUTE_WARNING = :dispute_warning
      UNRESOLVED = :unresolved
      OPEN_RESOLUTION = :open_resolution
      PENDING = :pending
      DISPUTE_NEEDS_RESPONSE = :dispute_needs_response
      DISPUTE_WARNING_NEEDS_RESPONSE = :dispute_warning_needs_response
      DISPUTE_UNDER_REVIEW = :dispute_under_review
      DISPUTE_WARNING_UNDER_REVIEW = :dispute_warning_under_review
      DISPUTE_LOST = :dispute_lost
      DISPUTE_WON = :dispute_won
      DISPUTE_CLOSED = :dispute_closed
      DISPUTE_WARNING_CLOSED = :dispute_warning_closed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
