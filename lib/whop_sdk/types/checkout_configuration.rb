# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutConfiguration < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :affiliate_code, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::CheckoutConfigurationCurrency }, optional: false, nullable: true

      field :effective_payment_method_configuration, -> { Whop_sdk::Types::CheckoutSessionPaymentMethodConfiguration }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :mode, -> { Whop_sdk::Types::CheckoutConfigurationMode }, optional: false, nullable: false

      field :payment_method_configuration, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::CheckoutConfigurationPlan }, optional: false, nullable: true

      field :purchase_url, -> { String }, optional: false, nullable: true

      field :redirect_url, -> { String }, optional: false, nullable: true

      field :three_ds_level, -> { Whop_sdk::Types::CheckoutConfigurationThreeDsLevel }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
