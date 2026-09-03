# frozen_string_literal: true

module Whop_sdk
  module Types
    class Payment < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :amount_after_fees, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :auto_refunded, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :billing_address, -> { Whop_sdk::Types::PaymentAddress }, optional: false, nullable: true

      field :billing_reason, -> { Whop_sdk::Types::BillingReasons }, optional: false, nullable: true

      field :checkout_configuration_id, -> { String }, optional: false, nullable: true

      field :client_secret, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :customer_phone, -> { String }, optional: false, nullable: true

      field :decline_code, -> { Whop_sdk::Types::PaymentDeclineCodes }, optional: false, nullable: true

      field :dispute_alerted_at, -> { String }, optional: false, nullable: true

      field :failure_message, -> { String }, optional: false, nullable: true

      field :financing_installments_count, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_payment_attempt_at, -> { String }, optional: false, nullable: true

      field :member_id, -> { String }, optional: false, nullable: true

      field :membership_id, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :needs_tracking, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :next_payment_attempt_at, -> { String }, optional: false, nullable: true

      field :paid_at, -> { String }, optional: false, nullable: true

      field :payment_instrument, -> { Whop_sdk::Types::PaymentInstrument }, optional: false, nullable: true

      field :payment_method_id, -> { String }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

      field :payments_failed, -> { Integer }, optional: false, nullable: false

      field :plan_id, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :promo_code_id, -> { String }, optional: false, nullable: true

      field :refundable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :refunded_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :refunded_at, -> { String }, optional: false, nullable: true

      field :retryable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :risk_score, -> { Integer }, optional: false, nullable: true

      field :risk_signals, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :settlement_time_at, -> { String }, optional: false, nullable: true

      field :shipment_id, -> { String }, optional: false, nullable: true

      field :shipping_address, -> { Whop_sdk::Types::PaymentAddress }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ReceiptStatus }, optional: false, nullable: false

      field :substatus, -> { Whop_sdk::Types::FriendlyReceiptStatus }, optional: false, nullable: false

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :tax_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :tax_behavior, -> { Whop_sdk::Types::ReceiptTaxBehaviors }, optional: false, nullable: true

      field :tax_refunded_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :usd_total, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :verification_checks, -> { Whop_sdk::Types::PaymentVerificationChecks }, optional: false, nullable: true

      field :voidable, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
