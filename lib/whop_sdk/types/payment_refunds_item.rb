# frozen_string_literal: true

module Whop_sdk
  module Types
    # A refund represents a full or partial reversal of a payment, including the amount, status, and payment provider.
    class PaymentRefundsItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::RefundStatuses }, optional: false, nullable: false
    end
  end
end
