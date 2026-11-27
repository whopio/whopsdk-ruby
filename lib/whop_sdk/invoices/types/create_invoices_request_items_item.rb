# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class CreateInvoicesRequestItemsItem < Internal::Types::Model
        field :description, -> { String }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false

        field :variant, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariant }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
