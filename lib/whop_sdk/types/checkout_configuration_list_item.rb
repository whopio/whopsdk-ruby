# frozen_string_literal: true

module Whop_sdk
  module Types
    # A checkout configuration is a reusable configuration for a checkout, including the plan, affiliate, and custom
    # metadata. Payments and memberships created from a checkout session inherit its metadata.
    class CheckoutConfigurationListItem < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :affiliate_code, -> { String }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :mode, -> { Whop_sdk::Types::CheckoutModes }, optional: false, nullable: false

      field :payment_method_configuration, -> { Whop_sdk::Types::CheckoutConfigurationListItemPaymentMethodConfiguration }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::CheckoutConfigurationListItemPlan }, optional: false, nullable: true

      field :purchase_url, -> { String }, optional: false, nullable: false

      field :redirect_url, -> { String }, optional: false, nullable: true
    end
  end
end
