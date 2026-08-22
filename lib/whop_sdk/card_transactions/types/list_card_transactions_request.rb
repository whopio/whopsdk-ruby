# frozen_string_literal: true

module Whop_sdk
  module CardTransactions
    module Types
      class ListCardTransactionsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :transaction_ids, -> { String }, optional: true, nullable: false

        field :card_id, -> { String }, optional: true, nullable: false

        field :cardholder_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestStatus }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
