# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # Parameters for CreateInvoice
      class CreateInvoicesRequest < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestProduct }

        member -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestProductID }
      end
    end
  end
end
