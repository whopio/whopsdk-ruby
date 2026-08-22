# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payment that settled this invoice. Null while the invoice is unpaid, when the invoice was marked paid
    # manually, and on a subscription renewal invoice, where the settling payment cannot yet be identified.
    class InvoicePayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
