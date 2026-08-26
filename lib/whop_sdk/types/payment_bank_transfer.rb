# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentBankTransfer < Internal::Types::Model
      field :account_number, -> { String }, optional: true, nullable: false

      field :account_number_label, -> { String }, optional: true, nullable: false

      field :amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :bank_account_type, -> { String }, optional: true, nullable: false

      field :bank_address, -> { String }, optional: true, nullable: false

      field :bank_branch, -> { String }, optional: true, nullable: false

      field :bank_code, -> { String }, optional: true, nullable: false

      field :bank_name, -> { String }, optional: true, nullable: false

      field :beneficiary_document, -> { String }, optional: true, nullable: false

      field :beneficiary_document_type, -> { String }, optional: true, nullable: false

      field :beneficiary_name, -> { String }, optional: true, nullable: false

      field :document_url, -> { String }, optional: true, nullable: false

      field :expires_at, -> { String }, optional: true, nullable: false

      field :instructions, -> { String }, optional: true, nullable: false

      field :reference, -> { String }, optional: true, nullable: false

      field :routing_number, -> { String }, optional: true, nullable: false

      field :secondary_account_number, -> { String }, optional: true, nullable: false

      field :secondary_account_number_label, -> { String }, optional: true, nullable: false
    end
  end
end
