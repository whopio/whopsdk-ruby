# frozen_string_literal: true

module Whop_sdk
  module Types
    # The variant purchased, described by its attributes instead of an id: the variant with exactly these attributes is
    # used, and one is created when none exists. Mutually exclusive with `plan_id` and `line_items`. Creating a variant
    # requires `plan:create`; creating or updating a product requires the corresponding product permission.
    class PaymentInputPlan < Internal::Types::Model
      field :application_fee_amount, -> { Integer }, optional: true, nullable: false

      field :billing_period, -> { Integer }, optional: true, nullable: false

      field :currency, -> { Whop_sdk::Types::PaymentInputPlanCurrency }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :expiration_days, -> { Integer }, optional: true, nullable: false

      field :force_create_new_plan, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :initial_price, -> { Integer }, optional: true, nullable: false

      field :internal_notes, -> { String }, optional: true, nullable: false

      field :override_tax_type, -> { Whop_sdk::Types::PaymentInputPlanOverrideTaxType }, optional: true, nullable: false

      field :plan_type, -> { Whop_sdk::Types::PaymentInputPlanPlanType }, optional: true, nullable: false

      field :product, -> { Whop_sdk::Types::PaymentInputPlanProduct }, optional: true, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :renewal_price, -> { Integer }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :trial_period_days, -> { Integer }, optional: true, nullable: false

      field :visibility, -> { Whop_sdk::Types::PaymentInputPlanVisibility }, optional: true, nullable: false
    end
  end
end
