# frozen_string_literal: true

module Whop_sdk
  module Types
    # A payment represents a completed or attempted charge. Payments track the amount, status, currency, and payment
    # method used.
    class PaymentListItem < Internal::Types::Model
      field :amount_after_fees, -> { Integer }, optional: false, nullable: false

      field :application_fee, -> { Whop_sdk::Types::PaymentListItemApplicationFee }, optional: false, nullable: true

      field :auto_refunded, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :billing_address, -> { Whop_sdk::Types::PaymentListItemBillingAddress }, optional: false, nullable: true

      field :billing_reason, -> { Whop_sdk::Types::BillingReasons }, optional: false, nullable: true

      field :card_brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :checkout_configuration_id, -> { String }, optional: false, nullable: true

      field :company, -> { Whop_sdk::Types::PaymentListItemCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :customer_phone, -> { String }, optional: false, nullable: true

      field :decline_code, -> { Whop_sdk::Types::PaymentDeclineCodes }, optional: false, nullable: true

      field :dispute_alerted_at, -> { String }, optional: false, nullable: true

      field :failure_message, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_payment_attempt, -> { String }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::PaymentListItemMember }, optional: false, nullable: true

      field :membership, -> { Whop_sdk::Types::PaymentListItemMembership }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :needs_tracking, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :next_payment_attempt, -> { String }, optional: false, nullable: true

      field :paid_at, -> { String }, optional: false, nullable: true

      field :payment_instrument, -> { Whop_sdk::Types::PaymentListItemPaymentInstrument }, optional: false, nullable: true

      field :payment_method, -> { Whop_sdk::Types::PaymentListItemPaymentMethod }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

      field :payments_failed, -> { Integer }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::PaymentListItemPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::PaymentListItemProduct }, optional: false, nullable: true

      field :promo_code, -> { Whop_sdk::Types::PaymentListItemPromoCode }, optional: false, nullable: true

      field :refundable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :refunded_amount, -> { Integer }, optional: false, nullable: true

      field :refunded_at, -> { String }, optional: false, nullable: true

      field :retryable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :settlement_currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :shipment, -> { Whop_sdk::Types::PaymentListItemShipment }, optional: false, nullable: true

      field :shipping_address, -> { Whop_sdk::Types::PaymentListItemShippingAddress }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ReceiptStatus }, optional: false, nullable: true

      field :substatus, -> { Whop_sdk::Types::FriendlyReceiptStatus }, optional: false, nullable: false

      field :subtotal, -> { Integer }, optional: false, nullable: true

      field :tax_amount, -> { Integer }, optional: false, nullable: true

      field :tax_behavior, -> { Whop_sdk::Types::ReceiptTaxBehaviors }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :usd_total, -> { Integer }, optional: false, nullable: true

      field :user, -> { Whop_sdk::Types::PaymentListItemUser }, optional: false, nullable: true

      field :voidable, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
