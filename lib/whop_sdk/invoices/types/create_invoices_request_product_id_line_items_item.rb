# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # A single line item to include on the invoice, with a label, quantity, and unit price.
      class CreateInvoicesRequestProductIDLineItemsItem < Internal::Types::Model
        field :label, -> { String }, optional: false, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false

        field :unit_price, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
