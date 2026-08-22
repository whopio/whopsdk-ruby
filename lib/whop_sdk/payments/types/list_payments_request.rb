# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class ListPaymentsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Types::ReceiptV2Order }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :billing_reasons, -> { Whop_sdk::Types::BillingReasons }, optional: true, nullable: false

        field :currencies, -> { Whop_sdk::Types::Currencies }, optional: true, nullable: false

        field :plan_ids, -> { String }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::Types::ReceiptStatus }, optional: true, nullable: false

        field :substatuses, -> { Whop_sdk::Types::FriendlyReceiptStatus }, optional: true, nullable: false

        field :include_free, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :updated_before, -> { String }, optional: true, nullable: false

        field :updated_after, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :checkout_configuration_ids, -> { String }, optional: true, nullable: false
      end
    end
  end
end
