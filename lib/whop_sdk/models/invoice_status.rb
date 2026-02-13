# frozen_string_literal: true

module WhopSDK
  module Models
    # The different statuses an invoice can be in
    module InvoiceStatus
      extend WhopSDK::Internal::Type::Enum

      DRAFT = :draft
      OPEN = :open
      PAID = :paid
      PAST_DUE = :past_due
      VOID = :void

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
