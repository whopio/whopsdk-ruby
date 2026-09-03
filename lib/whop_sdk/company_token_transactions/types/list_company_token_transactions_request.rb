# frozen_string_literal: true

module Whop_sdk
  module CompanyTokenTransactions
    module Types
      class ListCompanyTokenTransactionsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :transaction_type, -> { Whop_sdk::Types::CompanyTokenTransactionTypes }, optional: true, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
