# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class UpdateInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :automatically_finalizes_at, -> { String }, optional: true, nullable: false

        field :billing_address, -> { Whop_sdk::Invoices::Types::UpdateInvoicesRequestBillingAddress }, optional: true, nullable: false

        field :charge_buyer_fee, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :collection_method, -> { Whop_sdk::Types::InvoiceCollectionMethods }, optional: true, nullable: false

        field :customer_name, -> { String }, optional: true, nullable: false

        field :due_date, -> { String }, optional: true, nullable: false

        field :email_address, -> { String }, optional: true, nullable: false

        field :line_items, -> { Internal::Types::Array[Whop_sdk::Invoices::Types::UpdateInvoicesRequestLineItemsItem] }, optional: true, nullable: false

        field :mailing_address_id, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::Invoices::Types::UpdateInvoicesRequestPlan }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :subscription_billing_anchor_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
