# frozen_string_literal: true

module Whopsdk
  module Models
    # The friendly status of a receipt
    module FriendlyReceiptStatus
      extend Whopsdk::Internal::Type::Enum

      AUTO_REFUNDED = :auto_refunded
      REFUNDED = :refunded
      PARTIALLY_REFUNDED = :partially_refunded
      DISPUTE_WARNING = :dispute_warning
      OPEN_RESOLUTION = :open_resolution
      OPEN_DISPUTE = :open_dispute
      FAILED = :failed
      PRICE_TOO_LOW = :price_too_low
      SUCCEEDED = :succeeded
      DRAFTED = :drafted
      UNCOLLECTIBLE = :uncollectible
      UNRESOLVED = :unresolved
      PAST_DUE = :past_due
      PENDING = :pending
      INCOMPLETE = :incomplete
      CANCELED = :canceled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
