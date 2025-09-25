# frozen_string_literal: true

module Whopsdk
  module Models
    # The method of collection for an invoice.
    module CollectionMethod
      extend Whopsdk::Internal::Type::Enum

      SEND_INVOICE = :send_invoice
      CHARGE_AUTOMATICALLY = :charge_automatically

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
