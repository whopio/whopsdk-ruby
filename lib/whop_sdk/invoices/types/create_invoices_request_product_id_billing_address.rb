# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # Inline billing address to create a new mailing address for this invoice. Cannot be used together with
      # mailing_address_id.
      class CreateInvoicesRequestProductIDBillingAddress < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :line1, -> { String }, optional: true, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false

        field :tax_id_type, -> { Whop_sdk::Types::TaxIdentifierTypes }, optional: true, nullable: false

        field :tax_id_value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
