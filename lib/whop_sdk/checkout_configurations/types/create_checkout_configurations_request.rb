# frozen_string_literal: true

module Whop_sdk
  module CheckoutConfigurations
    module Types
      class CreateCheckoutConfigurationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :mode, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestMode }, optional: true, nullable: false

        field :payment_method_configuration, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPaymentMethodConfiguration }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlan }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :redirect_url, -> { String }, optional: true, nullable: false

        field :three_ds_level, -> { Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestThreeDsLevel }, optional: true, nullable: false
      end
    end
  end
end
