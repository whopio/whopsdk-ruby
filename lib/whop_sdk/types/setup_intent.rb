# frozen_string_literal: true

module Whop_sdk
  module Types
    # A setup intent allows a user to save a payment method for future use without making an immediate purchase.
    class SetupIntent < Internal::Types::Model
      field :checkout_configuration, -> { Whop_sdk::Types::SetupIntentCheckoutConfiguration }, optional: false, nullable: true

      field :company, -> { Whop_sdk::Types::SetupIntentCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :member, -> { Whop_sdk::Types::SetupIntentMember }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :payment_method, -> { Whop_sdk::Types::SetupIntentPaymentMethod }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::SetupIntentStatuses }, optional: false, nullable: false

      field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
