# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # A payment method named on this call rather than described by a confirmation token. `type` names it and the
      # member named after it carries its details. Nothing is collected on this call: the payment is created first and
      # the buyer or device then acts on the `next_action` the status endpoint serves. `card_present` (Tap to Pay): the
      # reader collects against the payment with the client secret in `next_action`. `paypal`: the buyer approves on
      # PayPal's page, reached through a `redirect` `next_action`, then returns to `return_url`; `member_id` or `email`
      # names the buyer. Mutually exclusive with `confirmation_token` and `payment_method_id`, and with `member_id`
      # except for `paypal`.
      class CreatePaymentsRequestPaymentMethod < Internal::Types::Model
        field :card_present, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodCardPresent }, optional: true, nullable: false

        field :paypal, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodPaypal }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodType }, optional: false, nullable: false
      end
    end
  end
end
