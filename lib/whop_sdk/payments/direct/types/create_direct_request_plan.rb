# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        # Deprecated: send `variant`, which takes `billing_type` in place of `plan_type`. Accepted only from callers
        # pinned to an API version before 2026-10-27-2.
        class CreateDirectRequestPlan < Internal::Types::Model
          field :allow_multiple_quantity, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :application_fee_amount, -> { Integer }, optional: true, nullable: false

          field :billing_period, -> { Integer }, optional: true, nullable: false

          field :currency, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlanCurrency }, optional: false, nullable: false

          field :description, -> { String }, optional: true, nullable: false

          field :expiration_days, -> { Integer }, optional: true, nullable: false

          field :force_create_new_plan, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :initial_price, -> { Integer }, optional: true, nullable: false

          field :internal_notes, -> { String }, optional: true, nullable: false

          field :override_tax_type, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlanOverrideTaxType }, optional: true, nullable: false

          field :plan_type, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlanPlanType }, optional: true, nullable: false

          field :product, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlanProduct }, optional: true, nullable: false

          field :product_id, -> { String }, optional: true, nullable: false

          field :renewal_price, -> { Integer }, optional: true, nullable: false

          field :title, -> { String }, optional: true, nullable: false

          field :trial_period_days, -> { Integer }, optional: true, nullable: false

          field :visibility, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlanVisibility }, optional: true, nullable: false
        end
      end
    end
  end
end
