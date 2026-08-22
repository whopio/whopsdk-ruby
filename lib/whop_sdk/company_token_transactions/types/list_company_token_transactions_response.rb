# frozen_string_literal: true

module Whop_sdk
  module CompanyTokenTransactions
    module Types
      # The connection type for CompanyTokenTransaction.
      class ListCompanyTokenTransactionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CompanyTokenTransactionListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
