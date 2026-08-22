# frozen_string_literal: true

module Whop_sdk
  module Types
    # The original payment that this refund was issued against. Null if the payment is no longer available.
    class RefundPayment < Internal::Types::Model
      field :billing_reason, -> { Whop_sdk::Types::BillingReasons }, optional: false, nullable: true

      field :card_brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :dispute_alerted_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :member, -> { Whop_sdk::Types::RefundPaymentMember }, optional: false, nullable: true

      field :membership, -> { Whop_sdk::Types::RefundPaymentMembership }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :paid_at, -> { String }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

      field :plan, -> { Whop_sdk::Types::RefundPaymentPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::RefundPaymentProduct }, optional: false, nullable: true

      field :subtotal, -> { Integer }, optional: false, nullable: true

      field :tax_amount, -> { Integer }, optional: false, nullable: true

      field :tax_behavior, -> { Whop_sdk::Types::ReceiptTaxBehaviors }, optional: false, nullable: true

      field :tax_refunded_amount, -> { Integer }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: true

      field :usd_total, -> { Integer }, optional: false, nullable: true

      field :user, -> { Whop_sdk::Types::RefundPaymentUser }, optional: false, nullable: true
    end
  end
end
