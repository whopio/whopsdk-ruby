# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # A payment method collected on the seller's device rather than described by a confirmation token. `type` names it
      # and the member named after it carries what the device needs. Today only `card_present` (Tap to Pay): nothing is
      # collected on this call, the payment is created first and the reader then collects against it with the client
      # secret the status endpoint serves in `next_action`. Mutually exclusive with `confirmation_token`, `member_id`
      # and `payment_method_id`.
      class CreatePaymentsRequestPaymentMethod < Internal::Types::Model
        field :card_present, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodCardPresent }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPaymentMethodType }, optional: false, nullable: false
      end
    end
  end
end
