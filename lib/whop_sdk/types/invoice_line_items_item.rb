# frozen_string_literal: true

module Whop_sdk
  module Types
    # A line item on an invoice, representing a single charge with a label, quantity, and unit price.
    class InvoiceLineItemsItem < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :position, -> { Integer }, optional: false, nullable: false

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false

      field :unit_price, -> { Integer }, optional: false, nullable: false
    end
  end
end
