# frozen_string_literal: true

module Whop_sdk
  module Types
    # The member whose token balance was affected by this transaction.
    class CompanyTokenTransactionListItemMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
