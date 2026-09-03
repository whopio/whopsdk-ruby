# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class ListInvoicesRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :collection_methods, -> { Whop_sdk::Types::InvoiceCollectionMethods }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::Types::InvoiceStatuses }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Types::InvoicesSortableColumns }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
