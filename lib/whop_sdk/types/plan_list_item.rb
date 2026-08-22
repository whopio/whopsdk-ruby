# frozen_string_literal: true

module Whop_sdk
  module Types
    class PlanListItem < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: true

      field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :billing_period, -> { Integer }, optional: false, nullable: true

      field :cancel_discount_intervals, -> { Integer }, optional: false, nullable: true

      field :cancel_discount_percentage, -> { Integer }, optional: false, nullable: true

      field :checkout_styling, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :custom_fields, -> { Internal::Types::Array[Whop_sdk::Types::PlanCustomField] }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :expiration_days, -> { Integer }, optional: false, nullable: true

      field :formatted_price, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :image, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :initial_price, -> { Integer }, optional: false, nullable: false

      field :internal_notes, -> { String }, optional: false, nullable: true

      field :invoice, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :member_count, -> { Integer }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :offer_cancel_discount, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :payment_method_configuration, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :plan_type, -> { Whop_sdk::Types::PlanListItemPlanType }, optional: false, nullable: false

      field :product, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :purchase_url, -> { String }, optional: false, nullable: false

      field :release_method, -> { Whop_sdk::Types::PlanListItemReleaseMethod }, optional: false, nullable: false

      field :renewal_price, -> { Integer }, optional: false, nullable: false

      field :split_pay_required_payments, -> { Integer }, optional: false, nullable: true

      field :stock, -> { Integer }, optional: false, nullable: true

      field :strike_through_initial_price, -> { Integer }, optional: false, nullable: true

      field :strike_through_renewal_price, -> { Integer }, optional: false, nullable: true

      field :three_ds_level, -> { Whop_sdk::Types::PlanListItemThreeDsLevel }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true

      field :trial_period_days, -> { Integer }, optional: false, nullable: true

      field :unlimited_stock, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :visibility, -> { Whop_sdk::Types::PlanListItemVisibility }, optional: false, nullable: false
    end
  end
end
