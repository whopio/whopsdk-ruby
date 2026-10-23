# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class UpdateInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :billing_address, -> { Whop_sdk::Invoices::Types::UpdateInvoicesRequestBillingAddress }, optional: true, nullable: false

        field :buyer_fee_percentage, -> { Integer }, optional: true, nullable: false

        field :due_at, -> { String }, optional: true, nullable: false

        field :items, -> { Internal::Types::Array[Whop_sdk::Invoices::Types::UpdateInvoicesRequestItemsItem] }, optional: true, nullable: false

        field :mailing_address_id, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false

        field :recipient_emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
