# frozen_string_literal: true

module Whop_sdk
  module Types
    # The Cash App-specific details for this payment method, including cashtag and buyer ID.
    class PaymentMethodCashappPaymentMethodCashapp < Internal::Types::Model
      field :buyer_id, -> { String }, optional: false, nullable: true

      field :cashtag, -> { String }, optional: false, nullable: true
    end
  end
end
