# frozen_string_literal: true

module Whop_sdk
  module Types
    module InvoiceCollectionMethods
      extend Whop_sdk::Internal::Types::Enum

      SEND_INVOICE = "send_invoice"
      CHARGE_AUTOMATICALLY = "charge_automatically"
    end
  end
end
