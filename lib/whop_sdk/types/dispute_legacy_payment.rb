# frozen_string_literal: true

module Whop_sdk
  module Types
    # The original payment that was disputed.
    class DisputeLegacyPayment < Internal::Types::Model
      field :billing_reason, -> { Whop_sdk::Types::BillingReasons }, optional: false, nullable: true

      field :card_brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :dispute_alerted_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :member, -> { Whop_sdk::Types::DisputeLegacyPaymentMember }, optional: false, nullable: true

      field :membership, -> { Whop_sdk::Types::DisputeLegacyPaymentMembership }, optional: false, nullable: true

      field :paid_at, -> { String }, optional: false, nullable: true

      field :payment_instrument, -> { Whop_sdk::Types::DisputeLegacyPaymentPaymentInstrument }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

      field :subtotal, -> { Integer }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: true

      field :usd_total, -> { Integer }, optional: false, nullable: true

      field :user, -> { Whop_sdk::Types::DisputeLegacyPaymentUser }, optional: false, nullable: true
    end
  end
end
