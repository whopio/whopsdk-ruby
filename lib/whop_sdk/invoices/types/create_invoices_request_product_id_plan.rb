# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # The plan attributes defining the price, currency, and billing interval for this invoice.
      class CreateInvoicesRequestProductIDPlan < Internal::Types::Model
        field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: true, nullable: false

        field :custom_fields, -> { Internal::Types::Array[Whop_sdk::Invoices::Types::CreateInvoicesRequestProductIDPlanCustomFieldsItem] }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expiration_days, -> { Integer }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :internal_notes, -> { String }, optional: true, nullable: false

        field :legacy_payment_method_controls, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :payment_method_configuration, -> { Whop_sdk::Invoices::Types::CreateInvoicesRequestProductIDPlanPaymentMethodConfiguration }, optional: true, nullable: false

        field :plan_type, -> { Whop_sdk::Types::PlanTypes }, optional: true, nullable: false

        field :release_method, -> { Whop_sdk::Types::ReleaseMethod }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :stock, -> { Integer }, optional: true, nullable: false

        field :trial_period_days, -> { Integer }, optional: true, nullable: false

        field :unlimited_stock, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Types::Visibility }, optional: true, nullable: false
      end
    end
  end
end
