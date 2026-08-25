# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSession < Internal::Types::Model
      field :affiliate_code, -> { String }, optional: false, nullable: true

      field :available_currencies, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :branding, -> { Whop_sdk::Types::CheckoutSessionBranding }, optional: false, nullable: true

      field :buyer_email, -> { String }, optional: false, nullable: true

      field :buyer_id, -> { String }, optional: false, nullable: true

      field :buyer_identity, -> { Whop_sdk::Types::CheckoutSessionBuyerIdentity }, optional: false, nullable: true

      field :buyer_identity_at, -> { String }, optional: false, nullable: true

      field :buyer_identity_method, -> { Whop_sdk::Types::CheckoutSessionBuyerIdentityMethod }, optional: false, nullable: true

      field :checkout_configuration, -> { String }, optional: false, nullable: true

      field :client_secret, -> { String }, optional: true, nullable: false

      field :collect_tax_id, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :cta_label, -> { Whop_sdk::Types::CheckoutSessionCtaLabel }, optional: false, nullable: false

      field :custom_field_responses, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionCustomFieldResponse] }, optional: false, nullable: false

      field :display_currency, -> { String }, optional: false, nullable: false

      field :entry, -> { Whop_sdk::Types::CheckoutSessionEntry }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :invoice_due_at, -> { String }, optional: false, nullable: true

      field :items, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionItem] }, optional: false, nullable: false

      field :last_confirm_error, -> { Whop_sdk::Types::CheckoutSessionConfirmError }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: true

      field :mode, -> { Whop_sdk::Types::CheckoutSessionMode }, optional: false, nullable: false

      field :next_action, -> { Whop_sdk::Types::CheckoutSessionNextAction }, optional: false, nullable: true

      field :object, -> { String }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::CheckoutSessionPayment }, optional: false, nullable: true

      field :payment_method_configuration, -> { Whop_sdk::Types::CheckoutSessionPaymentMethodConfiguration }, optional: false, nullable: true

      field :payment_method_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :phone_number, -> { String }, optional: false, nullable: true

      field :promo, -> { Whop_sdk::Types::CheckoutSessionPromo }, optional: false, nullable: true

      field :promo_code, -> { String }, optional: false, nullable: true

      field :quote, -> { Whop_sdk::Types::CheckoutSessionQuote }, optional: false, nullable: false

      field :redirect_url, -> { String }, optional: false, nullable: true

      field :requirements, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionRequirement] }, optional: false, nullable: false

      field :return_url, -> { String }, optional: false, nullable: true

      field :seller, -> { Whop_sdk::Types::CheckoutSessionSeller }, optional: false, nullable: false

      field :shipping_address, -> { Whop_sdk::Types::CheckoutSessionShippingAddress }, optional: false, nullable: true

      field :show_promo_code_input, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::CheckoutSessionStatus }, optional: false, nullable: false

      field :tax_behavior, -> { Whop_sdk::Types::CheckoutSessionTaxBehavior }, optional: false, nullable: true

      field :tax_id, -> { Whop_sdk::Types::CheckoutSessionTaxID }, optional: false, nullable: true

      field :three_ds_level, -> { Whop_sdk::Types::CheckoutSessionThreeDsLevel }, optional: false, nullable: true

      field :top_up_membership, -> { String }, optional: false, nullable: true

      field :transfer, -> { Whop_sdk::Types::CheckoutSessionTransfer }, optional: false, nullable: true
    end
  end
end
