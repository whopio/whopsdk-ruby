# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      class CreateCheckoutConfigurationsResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :effective_payment_method_configuration, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponseEffectivePaymentMethodConfiguration }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :mode, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponseMode }, optional: false, nullable: false

        field :payment_method_configuration, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponsePaymentMethodConfiguration }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponsePlan }, optional: true, nullable: false

        field :purchase_url, -> { String }, optional: true, nullable: false

        field :redirect_url, -> { String }, optional: true, nullable: false

        field :three_ds_level, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponseThreeDsLevel }, optional: true, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
