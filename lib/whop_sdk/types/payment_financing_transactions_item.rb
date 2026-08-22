# frozen_string_literal: true

module Whop_sdk
  module Types
    # A payment transaction.
    class PaymentFinancingTransactionsItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PaymentTransactionStatuses }, optional: false, nullable: false

      field :transaction_type, -> { Whop_sdk::Types::PaymentTransactionTypes }, optional: false, nullable: false
    end
  end
end
