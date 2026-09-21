# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class CreatePaymentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :auto_capture_after_minutes, -> { Integer }, optional: true, nullable: false

        field :capture, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :confirmation_token, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :line_items, -> { Internal::Types::Array[Whop_sdk::Payments::Types::CreatePaymentsRequestLineItemsItem] }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false

        field :plan, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPlan }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :promo_code_id, -> { String }, optional: true, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false

        field :shipping_address, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestShippingAddress }, optional: true, nullable: false

        field :statement_descriptor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
