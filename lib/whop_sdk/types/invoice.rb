# frozen_string_literal: true

module Whop_sdk
  module Types
    # An invoice represents an itemized bill sent by a company to a customer for a specific product and plan, tracking
    # the amount owed, due date, and payment status.
    class Invoice < Internal::Types::Model
      field :automatically_finalizes_at, -> { String }, optional: false, nullable: true

      field :charge_buyer_fee, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :collection_method, -> { Whop_sdk::Types::InvoiceCollectionMethods }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::InvoiceCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :current_plan, -> { Whop_sdk::Types::InvoiceCurrentPlan }, optional: false, nullable: false

      field :customer_name, -> { String }, optional: false, nullable: true

      field :due_date, -> { String }, optional: false, nullable: true

      field :email_address, -> { String }, optional: false, nullable: true

      field :fetch_invoice_token, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::InvoiceLineItemsItem] }, optional: false, nullable: false

      field :mailing_address, -> { Whop_sdk::Types::InvoiceMailingAddress }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::InvoiceMember }, optional: false, nullable: true

      field :number, -> { String }, optional: false, nullable: false

      field :pay_online_url, -> { String }, optional: false, nullable: true

      field :payment, -> { Whop_sdk::Types::InvoicePayment }, optional: false, nullable: true

      field :payment_processing, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :product, -> { Whop_sdk::Types::InvoiceProduct }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::InvoiceStatuses }, optional: false, nullable: false

      field :subscription_billing_anchor_at, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::InvoiceUser }, optional: false, nullable: true
    end
  end
end
