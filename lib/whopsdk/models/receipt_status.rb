# frozen_string_literal: true

module Whopsdk
  module Models
    # The status of a receipt
    module ReceiptStatus
      extend Whopsdk::Internal::Type::Enum

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
