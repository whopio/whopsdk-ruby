# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      class CreatePaymentQuotesRequest < Internal::Types::Model
        field :address, -> { Whop_sdk::PaymentQuotes::Types::CreatePaymentQuotesRequestAddress }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :shipping_address, -> { Whop_sdk::PaymentQuotes::Types::CreatePaymentQuotesRequestShippingAddress }, optional: true, nullable: false

        field :tax_ids, -> { Internal::Types::Array[Whop_sdk::PaymentQuotes::Types::CreatePaymentQuotesRequestTaxIDsItem] }, optional: true, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::PaymentInputLineItemsItem] }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::Types::PaymentInputPlan }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :promo_code, -> { String }, optional: true, nullable: false

        field :promo_code_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
