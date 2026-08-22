# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # The properties of the product to create for this invoice. Provide this to create a new product inline.
      class CreateInvoicesRequestProductProduct < Internal::Types::Model
        field :product_tax_code_id, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
