# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class SummaryPaymentsRequest < Internal::Types::Model
        field :groups, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestGroupsItem }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestStatusesItem }, optional: true, nullable: false

        field :substatuses, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestSubstatusesItem }, optional: true, nullable: false

        field :billing_reasons, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestBillingReasonsItem }, optional: true, nullable: false

        field :currencies, -> { String }, optional: true, nullable: false

        field :variant_ids, -> { String }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :payment_methods, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestPaymentMethodsItem }, optional: true, nullable: false

        field :tracking_states, -> { Whop_sdk::Payments::Types::SummaryPaymentsRequestTrackingStatesItem }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :refunded_after, -> { String }, optional: true, nullable: false

        field :refunded_before, -> { String }, optional: true, nullable: false

        field :dispute_alerted_after, -> { String }, optional: true, nullable: false

        field :dispute_alerted_before, -> { String }, optional: true, nullable: false

        field :dispute_created_after, -> { String }, optional: true, nullable: false

        field :dispute_created_before, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :include_connected_accounts, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
