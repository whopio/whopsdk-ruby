# frozen_string_literal: true

module Whop_sdk
  module CompanyTokenTransactions
    module Types
      class RetrieveCompanyTokenTransactionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
