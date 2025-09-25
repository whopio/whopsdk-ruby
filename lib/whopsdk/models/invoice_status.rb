# frozen_string_literal: true

module Whopsdk
  module Models
    # The different statuses an invoice can be in
    module InvoiceStatus
      extend Whopsdk::Internal::Type::Enum

      OPEN = :open
      PAID = :paid
      PAST_DUE = :past_due
      VOID = :void

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
