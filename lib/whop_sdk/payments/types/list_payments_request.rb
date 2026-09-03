# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class ListPaymentsRequest < Internal::Types::Model
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
