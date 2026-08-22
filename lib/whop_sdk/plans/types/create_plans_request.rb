# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class CreatePlansRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :adaptive_pricing_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :billing_period, -> { Integer }, optional: true, nullable: false

        field :checkout_styling, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :custom_fields, -> { Internal::Types::Array[Whop_sdk::Plans::Types::CreatePlansRequestCustomFieldsItem] }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expiration_days, -> { Integer }, optional: true, nullable: false

        field :image, -> { Whop_sdk::Plans::Types::CreatePlansRequestImage }, optional: true, nullable: false

        field :initial_price, -> { Integer }, optional: true, nullable: false

        field :internal_notes, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :override_tax_type, -> { String }, optional: true, nullable: false

        field :payment_method_configuration, -> { Whop_sdk::Plans::Types::CreatePlansRequestPaymentMethodConfiguration }, optional: true, nullable: false

        field :plan_type, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :release_method, -> { String }, optional: true, nullable: false

        field :renewal_price, -> { Integer }, optional: true, nullable: false

        field :split_pay_required_payments, -> { Integer }, optional: true, nullable: false

        field :stock, -> { Integer }, optional: true, nullable: false

        field :three_ds_level, -> { Whop_sdk::Plans::Types::CreatePlansRequestThreeDsLevel }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :trial_period_days, -> { Integer }, optional: true, nullable: false

        field :unlimited_stock, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
