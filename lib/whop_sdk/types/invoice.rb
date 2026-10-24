# frozen_string_literal: true

module Whop_sdk
  module Types
    class Invoice < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :amount_due, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :billing_address, -> { Whop_sdk::Types::PaymentAddress }, optional: false, nullable: true

      field :buyer_fee_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :buyer_fee_percentage, -> { Integer }, optional: false, nullable: false

      field :checkout_link, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :customer_name, -> { String }, optional: false, nullable: true

      field :due_at, -> { String }, optional: false, nullable: true

      field :email_address, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :invoice_prefix, -> { String }, optional: false, nullable: true

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::InvoiceLineItem] }, optional: false, nullable: false

      field :mailing_address_id, -> { String }, optional: false, nullable: true

      field :member_id, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::InvoiceObject }, optional: false, nullable: false

      field :overdue, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :paid_at, -> { String }, optional: false, nullable: true

      field :payment_method_id, -> { String }, optional: false, nullable: true

      field :recipient_emails, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::InvoiceStatus }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :tax_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :totals_status, -> { Whop_sdk::Types::InvoiceTotalsStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
