# frozen_string_literal: true

module WhopSDK
  module Models
    # The status of a receipt
    module ReceiptStatus
      extend WhopSDK::Internal::Type::Enum

      DRAFT = :draft
      OPEN = :open
      PAID = :paid
      PENDING = :pending
      UNCOLLECTIBLE = :uncollectible
      UNRESOLVED = :unresolved
      VOID = :void

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
