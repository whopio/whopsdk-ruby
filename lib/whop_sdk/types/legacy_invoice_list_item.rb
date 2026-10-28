# frozen_string_literal: true

module Whop_sdk
  module Types
    # An invoice represents an itemized bill sent by a company to a customer for a specific product and plan, tracking
    # the amount owed, due date, and payment status.
    class LegacyInvoiceListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :current_plan, -> { Whop_sdk::Types::LegacyInvoiceListItemCurrentPlan }, optional: false, nullable: false

      field :due_date, -> { String }, optional: false, nullable: true

      field :email_address, -> { String }, optional: false, nullable: true

      field :fetch_invoice_token, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::LegacyInvoiceListItemLineItemsItem] }, optional: false, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :payment_processing, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::InvoiceStatuses }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::LegacyInvoiceListItemUser }, optional: false, nullable: true
    end
  end
end
