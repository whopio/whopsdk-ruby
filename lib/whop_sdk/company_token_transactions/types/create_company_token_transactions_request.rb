# frozen_string_literal: true

module Whop_sdk
  module CompanyTokenTransactions
    module Types
      # Parameters for CreateCompanyTokenTransaction
      class CreateCompanyTokenTransactionsRequest < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :transaction_type

        member -> { Whop_sdk::CompanyTokenTransactions::Types::CreateCompanyTokenTransactionsRequestTransfer }, key: "TRANSFER"

        member -> { Whop_sdk::CompanyTokenTransactions::Types::CreateCompanyTokenTransactionsRequestAdd }, key: "ADD"

        member -> { Whop_sdk::CompanyTokenTransactions::Types::CreateCompanyTokenTransactionsRequestSubtract }, key: "SUBTRACT"
      end
    end
  end
end
