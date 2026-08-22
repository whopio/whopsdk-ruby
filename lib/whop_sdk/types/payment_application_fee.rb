# frozen_string_literal: true

module Whop_sdk
  module Types
    # The application fee charged on this payment.
    class PaymentApplicationFee < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :amount_captured, -> { Integer }, optional: false, nullable: false

      field :amount_refunded, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
