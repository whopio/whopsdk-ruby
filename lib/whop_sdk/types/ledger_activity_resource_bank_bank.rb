# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceBankBank < Internal::Types::Model
      field :account_name, -> { String }, optional: false, nullable: true

      field :account_type, -> { String }, optional: false, nullable: true

      field :bank_name, -> { String }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
