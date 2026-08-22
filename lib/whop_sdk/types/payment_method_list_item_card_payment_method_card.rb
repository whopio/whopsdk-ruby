# frozen_string_literal: true

module Whop_sdk
  module Types
    # The card-specific details for this payment method, including brand, last four digits, and expiration.
    class PaymentMethodListItemCardPaymentMethodCard < Internal::Types::Model
      field :brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

      field :exp_month, -> { Integer }, optional: false, nullable: true

      field :exp_year, -> { Integer }, optional: false, nullable: true

      field :expired, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :fingerprint, -> { String }, optional: false, nullable: true

      field :funding_type, -> { Whop_sdk::Types::CardFundingTypes }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true

      field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
