# frozen_string_literal: true

module Whop_sdk
  module Types
    # A token transaction records a credit or debit to a member's token balance within a company, including transfers
    # between members.
    class CompanyTokenTransaction < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::CompanyTokenTransactionCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :idempotency_key, -> { String }, optional: false, nullable: true

      field :linked_transaction_id, -> { String }, optional: false, nullable: true

      field :member, -> { Whop_sdk::Types::CompanyTokenTransactionMember }, optional: false, nullable: false

      field :transaction_type, -> { Whop_sdk::Types::CompanyTokenTransactionTypes }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::CompanyTokenTransactionUser }, optional: false, nullable: false
    end
  end
end
