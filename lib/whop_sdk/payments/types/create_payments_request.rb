# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class CreatePaymentsRequest < Internal::Types::Model
        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :auto_capture_after_minutes, -> { Integer }, optional: true, nullable: false

        field :billing_address, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestBillingAddress }, optional: true, nullable: false

        field :capture, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :confirmation_token, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :line_items, -> { Internal::Types::Array[Whop_sdk::Payments::Types::CreatePaymentsRequestLineItemsItem] }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :off_session, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :payment_method, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethod }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false

        field :quote_id, -> { String }, optional: true, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false

        field :setup_future_usage, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestSetupFutureUsage }, optional: true, nullable: false

        field :shipping_address, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestShippingAddress }, optional: true, nullable: false

        field :statement_descriptor, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :promo_code, -> { String }, optional: true, nullable: false

        field :promo_code_id, -> { String }, optional: true, nullable: false

        field :variant, -> { Whop_sdk::Types::PaymentInputVariant }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
