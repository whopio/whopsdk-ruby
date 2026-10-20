# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class ListPaymentsRequest < Internal::Types::Model
        field :mode, -> { Whop_sdk::Payments::Types::ListPaymentsRequestMode }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Payments::Types::ListPaymentsRequestStatus }, optional: true, nullable: false

        field :billing_reason, -> { Whop_sdk::Payments::Types::ListPaymentsRequestBillingReason }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :membership_id, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::Payments::Types::ListPaymentsRequestStatusesItem }, optional: true, nullable: false

        field :substatuses, -> { Whop_sdk::Payments::Types::ListPaymentsRequestSubstatusesItem }, optional: true, nullable: false

        field :billing_reasons, -> { Whop_sdk::Payments::Types::ListPaymentsRequestBillingReasonsItem }, optional: true, nullable: false

        field :currencies, -> { String }, optional: true, nullable: false

        field :plan_ids, -> { String }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :payment_methods, -> { Whop_sdk::Payments::Types::ListPaymentsRequestPaymentMethodsItem }, optional: true, nullable: false

        field :tracking_states, -> { Whop_sdk::Payments::Types::ListPaymentsRequestTrackingStatesItem }, optional: true, nullable: false

        field :refunded_after, -> { String }, optional: true, nullable: false

        field :refunded_before, -> { String }, optional: true, nullable: false

        field :dispute_alerted_after, -> { String }, optional: true, nullable: false

        field :dispute_alerted_before, -> { String }, optional: true, nullable: false

        field :dispute_created_after, -> { String }, optional: true, nullable: false

        field :dispute_created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Payments::Types::ListPaymentsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Payments::Types::ListPaymentsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
