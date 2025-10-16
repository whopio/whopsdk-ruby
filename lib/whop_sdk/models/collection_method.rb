# frozen_string_literal: true

module WhopSDK
  module Models
    # The method of collection for an invoice.
    module CollectionMethod
      extend WhopSDK::Internal::Type::Enum

      SEND_INVOICE = :send_invoice
      CHARGE_AUTOMATICALLY = :charge_automatically

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
