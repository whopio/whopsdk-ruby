# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # Find or create a variant inline by its attributes, using the payment API properties. Requires plan:create.
      class CreateInvoicesRequestItemsItemVariant < Internal::Types::Model
        field :allow_multiple_quantity, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :application_fee_amount, -> { Integer }, optional: true, nullable: false

        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :billing_type, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariantBillingType }, optional: true, nullable: false

        field :currency, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariantCurrency }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expiration_days, -> { Integer }, optional: true, nullable: false

        field :force_create_new_plan, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :internal_notes, -> { String }, optional: true, nullable: false

        field :override_tax_type, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariantOverrideTaxType }, optional: true, nullable: false

        field :product, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariantProduct }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :trial_period_days, -> { Integer }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestItemsItemVariantVisibility }, optional: true, nullable: false
      end
    end
  end
end
