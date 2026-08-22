# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class RetrievePaymentsResponse < Internal::Types::Model
        field :amount_after_fees, -> { Integer }, optional: false, nullable: false

        field :application_fee, -> { Whop_sdk::Types::PaymentApplicationFee }, optional: false, nullable: true

        field :auto_refunded, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :billing_address, -> { Whop_sdk::Types::PaymentBillingAddress }, optional: false, nullable: true

        field :billing_reason, -> { Whop_sdk::Types::BillingReasons }, optional: false, nullable: true

        field :card_brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

        field :card_exp_month, -> { Integer }, optional: false, nullable: true

        field :card_exp_year, -> { Integer }, optional: false, nullable: true

        field :card_last4, -> { String }, optional: false, nullable: true

        field :checkout_configuration_id, -> { String }, optional: false, nullable: true

        field :company, -> { Whop_sdk::Types::PaymentCompany }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :customer_phone, -> { String }, optional: false, nullable: true

        field :decline_code, -> { Whop_sdk::Types::PaymentDeclineCodes }, optional: false, nullable: true

        field :dispute_alerted_at, -> { String }, optional: false, nullable: true

        field :disputes, -> { Internal::Types::Array[Whop_sdk::Types::PaymentDisputesItem] }, optional: false, nullable: true

        field :failure_message, -> { String }, optional: false, nullable: true

        field :financing_installments_count, -> { Integer }, optional: false, nullable: true

        field :financing_transactions, -> { Internal::Types::Array[Whop_sdk::Types::PaymentFinancingTransactionsItem] }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :last_payment_attempt, -> { String }, optional: false, nullable: true

        field :member, -> { Whop_sdk::Types::PaymentMember }, optional: false, nullable: true

        field :membership, -> { Whop_sdk::Types::PaymentMembership }, optional: false, nullable: true

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

        field :needs_tracking, -> { Internal::Types::Boolean }, optional: false, nullable: true

        field :next_payment_attempt, -> { String }, optional: false, nullable: true

        field :paid_at, -> { String }, optional: false, nullable: true

        field :payment_instrument, -> { Whop_sdk::Types::PaymentPaymentInstrument }, optional: false, nullable: true

        field :payment_method, -> { Whop_sdk::Types::PaymentPaymentMethod }, optional: false, nullable: true

        field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

        field :payments_failed, -> { Integer }, optional: false, nullable: true

        field :plan, -> { Whop_sdk::Types::PaymentPlan }, optional: false, nullable: true

        field :product, -> { Whop_sdk::Types::PaymentProduct }, optional: false, nullable: true

        field :promo_code, -> { Whop_sdk::Types::PaymentPromoCode }, optional: false, nullable: true

        field :refundable, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :refunded_amount, -> { Integer }, optional: false, nullable: true

        field :refunded_at, -> { String }, optional: false, nullable: true

        field :refunds, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRefundsItem] }, optional: false, nullable: false

        field :resolutions, -> { Internal::Types::Array[Whop_sdk::Types::PaymentResolutionsItem] }, optional: false, nullable: true

        field :retryable, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :risk_score, -> { Integer }, optional: false, nullable: true

        field :risk_signals, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

        field :settlement_amount, -> { Integer }, optional: false, nullable: false

        field :settlement_currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :settlement_exchange_rate, -> { Integer }, optional: false, nullable: true

        field :settlement_time_at, -> { String }, optional: false, nullable: true

        field :shipment, -> { Whop_sdk::Types::PaymentShipment }, optional: false, nullable: true

        field :shipping_address, -> { Whop_sdk::Types::PaymentShippingAddress }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Types::ReceiptStatus }, optional: false, nullable: true

        field :substatus, -> { Whop_sdk::Types::FriendlyReceiptStatus }, optional: false, nullable: false

        field :subtotal, -> { Integer }, optional: false, nullable: true

        field :tax_amount, -> { Integer }, optional: false, nullable: true

        field :tax_behavior, -> { Whop_sdk::Types::ReceiptTaxBehaviors }, optional: false, nullable: true

        field :tax_refunded_amount, -> { Integer }, optional: false, nullable: true

        field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: true

        field :updated_at, -> { String }, optional: false, nullable: false

        field :usd_total, -> { Integer }, optional: false, nullable: true

        field :user, -> { Whop_sdk::Types::PaymentUser }, optional: false, nullable: true

        field :verification_checks, -> { Whop_sdk::Types::PaymentVerificationChecks }, optional: false, nullable: true

        field :voidable, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :client_secret, -> { String }, optional: false, nullable: true
      end
    end
  end
end
