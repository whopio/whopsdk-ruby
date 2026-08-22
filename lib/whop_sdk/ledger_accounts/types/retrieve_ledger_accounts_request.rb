# frozen_string_literal: true

module Whop_sdk
  module LedgerAccounts
    module Types
      class RetrieveLedgerAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
